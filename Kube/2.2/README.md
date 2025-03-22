### Задание 1. Создать Deployment приложения, использующего локальный PV, созданный вручную.   

1. Создать Deployment приложения, состоящего из контейнеров busybox и multitool.   
[dep2app](https://github.com/Heimdier/DEV/blob/main/Kube/2.2/dep2app.yml)

2. Создать PV и PVC для подключения папки на локальной ноде, которая будет использована в поде.   
[pv](https://github.com/Heimdier/DEV/blob/main/Kube/2.2/pv.yml)   
[pvc](https://github.com/Heimdier/DEV/blob/main/Kube/2.2/pvc.yml)

```shell
maha@mahavm:~/kuber/2-2$ kubectl apply -f pv.yml
persistentvolume/task-pv-volume created
maha@mahavm:~/kuber/2-2$ kubectl apply -f pvc.yml
persistentvolumeclaim/task-pv-claim created
maha@mahavm:~/kuber/2-2$ kubectl apply -f dep2app.yml
deployment.apps/2app created

maha@mahavm:~/kuber/2-2$ kubectl get pv
NAME             CAPACITY   ACCESS MODES   RECLAIM POLICY   STATUS   CLAIM                   STORAGECLASS   VOLUMEATTRIBUTESCLASS   REASON   AGE
task-pv-volume   20Mi       RWO            Retain           Bound    default/task-pv-claim   manual         <unset>                          3m3s
maha@mahavm:~/kuber/2-2$ kubectl get pvc
NAME            STATUS   VOLUME           CAPACITY   ACCESS MODES   STORAGECLASS   VOLUMEATTRIBUTESCLASS   AGE
task-pv-claim   Bound    task-pv-volume   20Mi       RWO            manual         <unset>                 2m51s
maha@mahavm:~/kuber/2-2$ kubectl get pod
NAME                    READY   STATUS    RESTARTS        AGE
2app-79d95d478b-zfmtt   2/2     Running   0               3m43s

```

3. Зашел в контейнер multitool проверить пишет ли busybox в общую директорию

![image](https://github.com/user-attachments/assets/a720968b-c860-4536-82aa-833f166d3677)


4. Удалить Deployment и PVC. Продемонстрировать, что после этого произошло с PV
   
![image](https://github.com/user-attachments/assets/54e39285-cc6b-49cf-b48b-9e816b7f5e15)

Cтатус pv сменился с bound на released, т.е. с хранилищем не связан claim, но данные на ноде должны сохраниться

5. Проверяю, что данные сохранились на локальном диске ноды
   
![image](https://github.com/user-attachments/assets/b2cc2586-528d-4ffc-9cdf-c105906cd123)


6. Удалил PV.  данные все также на месте, так как PV выступает лишь как интерфейс для доступа к хранилищу
   
![image](https://github.com/user-attachments/assets/286066da-8a85-4ddd-a3e7-efa9c5ef55dd)


------

### Задание 2. Создать Deployment приложения, которое может хранить файлы на NFS с динамическим созданием PV.   

1. Включить и настроить NFS-сервер на MicroK8S.   
```shell
sudo apt-get install nfs-kernel-server
sudo mkdir -p /srv/nfs
sudo chown nobody:nogroup /srv/nfs
sudo chmod 0777 /srv/nfs

nano /etc/exports
/srv/nfs 192.168.190.0/24(rw,sync,no_subtree_check)

sudo systemctl restart nfs-kernel-server
```
2. Установил CSI driver for NFS.   

```shell
microk8s enable helm3
microk8s helm3 repo add csi-driver-nfs https://raw.githubusercontent.com/kubernetes-csi/csi-driver-nfs/master/charts
microk8s helm3 repo update

microk8s helm3 install csi-driver-nfs csi-driver-nfs/csi-driver-nfs \
    --namespace kube-system \
    --set kubeletDir="/var/snap/microk8s/common/var/lib/kubelet"

maha@mahavm:~/kuber/2-2$ kubectl --namespace=kube-system get pods --selector="app.kubernetes.io/instance=csi-driver-nfs" --watch
NAME                                  READY   STATUS              RESTARTS   AGE
csi-nfs-node-bvppn                    3/3     Running             0          38s
csi-nfs-controller-8458d4f67d-8ztbf   5/5     Running             0          45s

maha@mahavm:~/kuber/2-2$ microk8s kubectl get csidrivers
NAME             ATTACHREQUIRED   PODINFOONMOUNT   STORAGECAPACITY   TOKENREQUESTS   REQUIRESREPUBLISH   MODES        AGE
nfs.csi.k8s.io   false            false            false             <unset>         false               Persistent   13m

```

3. Создал storage class и pvc, pv создался автоматически

[sc-nfs](https://github.com/Heimdier/DEV/blob/main/Kube/2.2/sc-nfs.yml)   
[pvc-nfs](https://github.com/Heimdier/DEV/blob/main/Kube/2.2/pvc-nfs.yml)
   
```shell
maha@mahavm:~/kuber/2-2$ microk8s kubectl apply -f sc-nfs.yaml
storageclass.storage.k8s.io/nfs-csi created
maha@mahavm:~/kuber/2-2$ microk8s kubectl apply -f pvc-nfs.yml
persistentvolumeclaim/my-pvc created

maha@mahavm:~/kuber/2-2$  kubectl get pv
NAME                                       CAPACITY   ACCESS MODES   RECLAIM POLICY   STATUS   CLAIM            STORAGECLASS   VOLUMEATTRIBUTESCLASS   REASON   AGE
pvc-50ba2a3f-2f6e-4902-86f3-8ee4586874c5   5Gi        RWO            Delete           Bound    default/my-pvc   nfs-csi        <unset>                          7m26s

maha@mahavm:~/kuber/2-2$ kubectl get pvc
NAME     STATUS   VOLUME                                     CAPACITY   ACCESS MODES   STORAGECLASS   VOLUMEATTRIBUTESCLASS   AGE
my-pvc   Bound    pvc-50ba2a3f-2f6e-4902-86f3-8ee4586874c5   5Gi        RWO            nfs-csi        <unset>                 8m17s

```

4. Создать Deployment приложения состоящего из multitool, и подключить к нему PV, созданный автоматически на сервере NFS       

[dep-mult](https://github.com/Heimdier/DEV/blob/main/Kube/2.2/dep-mult.yml) 

![image](https://github.com/user-attachments/assets/1ee807b7-6df5-48a9-96f9-0a964b0926c9)

5. Проверил что multitool пишет в nfs    

![image](https://github.com/user-attachments/assets/dd907c85-1218-42b7-ba20-dd3bfa642b0a)

6. Зашел в под multitool, проверил что пишется в примонтированный nfs   

![image](https://github.com/user-attachments/assets/9eaf0427-bc00-4e11-9c0a-b087a77bcb4a)


 




[deploy-nginx](https://github.com/Heimdier/DEV/blob/main/Kube/1.5./deploy-nginx.yml)

#### Создал Deployment приложения backend из образа multitool

```shell

```

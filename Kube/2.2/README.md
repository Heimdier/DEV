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


2. Создать Deployment приложения состоящего из multitool, и подключить к нему PV, созданный автоматически на сервере NFS.   


3. Продемонстрировать возможность чтения и записи файла изнутри пода.   


4. Предоставить манифесты, а также скриншоты или вывод необходимых команд.   




[deploy-nginx](https://github.com/Heimdier/DEV/blob/main/Kube/1.5./deploy-nginx.yml)

#### Создал Deployment приложения backend из образа multitool

```shell

```

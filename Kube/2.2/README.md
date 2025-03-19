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


4. Продемонстрировать, что multitool может читать файл, в который busybox пишет каждые пять секунд в общей директории.   


5. Удалить Deployment и PVC. Продемонстрировать, что после этого произошло с PV. Пояснить, почему.   


6. Продемонстрировать, что файл сохранился на локальном диске ноды. Удалить PV.  Продемонстрировать что произошло с файлом после удаления PV. Пояснить, почему.   


5. Предоставить манифесты, а также скриншоты или вывод необходимых команд.   

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

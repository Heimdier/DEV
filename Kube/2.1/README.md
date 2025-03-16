### Задание 1 Создать Deployment приложения, состоящего из двух контейнеров и обменивающихся данными.

1. Создать Deployment приложения, состоящего из контейнеров busybox и multitool.   
[deploy](https://github.com/Heimdier/DEV/blob/main/Kube/2.1/deploy.yml)
```shell
maha@mahavm:~/kuber/2-1$ kubectl apply -f deploy5s.yml
deployment.apps/2app unchanged
maha@mahavm:~/kuber/2-1$ kubectl get pods --all-namespaces
NAMESPACE     NAME                                         READY   STATUS    RESTARTS       AGE
default       2app-855d7585cd-7s6km                          2/2     Running   0              17s
```

3. Сделать так, чтобы busybox писал каждые пять секунд в некий файл в общей директории.
4. Обеспечить возможность чтения файла контейнером multitool.
5. Продемонстрировать, что multitool может читать файл, который периодоически обновляется.
6. 
```shell
maha@mahavm:~/kuber/2-1$ kubectl logs 2app-855d7585cd-7s6km -c multi
Sun Mar 16 08:21:00 UTC 2025_Success!
Sun Mar 16 08:21:05 UTC 2025_Success!
Sun Mar 16 08:21:10 UTC 2025_Success!
Sun Mar 16 08:21:15 UTC 2025_Success!
Sun Mar 16 08:21:20 UTC 2025_Success!
Sun Mar 16 08:21:25 UTC 2025_Success!
Sun Mar 16 08:21:30 UTC 2025_Success!
Sun Mar 16 08:21:35 UTC 2025_Success!
Sun Mar 16 08:21:40 UTC 2025_Success!
Sun Mar 16 08:21:45 UTC 2025_Success!
Sun Mar 16 08:21:50 UTC 2025_Success!
Sun Mar 16 08:21:55 UTC 2025_Success!
Sun Mar 16 08:22:00 UTC 2025_Success!
Sun Mar 16 08:22:05 UTC 2025_Success!
Sun Mar 16 08:22:10 UTC 2025_Success!
Sun Mar 16 08:22:15 UTC 2025_Success!
Sun Mar 16 08:22:20 UTC 2025_Success!
Sun Mar 16 08:22:25 UTC 2025_Success!
Sun Mar 16 08:22:30 UTC 2025_Success!
Sun Mar 16 08:22:35 UTC 2025_Success!
maha@mahavm:~/kuber/2-1$ ^C

```
6. Предоставить манифесты Deployment в решении, а также скриншоты или вывод команды из п. 4.

------

### Задание 2 Создать DaemonSet приложения, которое может прочитать логи ноды.

1. Создать DaemonSet приложения, состоящего из multitool.
[daemon](https://github.com/Heimdier/DEV/blob/main/Kube/2.1/daemon.yml)
  
3. Обеспечить возможность чтения файла `/var/log/syslog` кластера MicroK8S.
4. Продемонстрировать возможность чтения файла изнутри пода.
5. Предоставить манифесты Deployment, а также скриншоты или вывод команды из п. 2.


[deploy](https://github.com/Heimdier/DEV/blob/main/Kube/2.1/deploy.yml)

#### Создал Deployment приложения backend из образа multitool

```shell

```

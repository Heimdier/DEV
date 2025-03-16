### Задание 1. Создать Deployment приложения, состоящего из двух контейнеров и обменивающихся данными.

1. Создать Deployment приложения, состоящего из контейнеров busybox и multitool.   
[deploy](https://github.com/Heimdier/DEV/blob/main/Kube/2.1/deploy.yml)
```shell
maha@mahavm:~/kuber/2-1$ kubectl apply -f deploy5s.yml
deployment.apps/2app unchanged
maha@mahavm:~/kuber/2-1$ kubectl get pods --all-namespaces
NAMESPACE     NAME                                         READY   STATUS    RESTARTS       AGE
default       2app-855d7585cd-7s6km                          2/2     Running   0              17s
```

2. Сделать так, чтобы busybox писал каждые пять секунд в некий файл в общей директории.
```shell
      - name: busyb
        image: busybox
        command: ["/bin/sh", "-c", "while true; do echo $(date)_Success!  >> /2/tulsi.txt; sleep 5; done"]
        volumeMounts:
        - name: island
          mountPath: /2
```
   
3. Обеспечить возможность чтения файла контейнером multitool.
```shell
      - name: multi
        image: wbitt/network-multitool
        command: ["/bin/sh", "-c", "while true; do cat /1/tulsi.txt; sleep 5; done"]
        volumeMounts:
        - name: island
          mountPath: /1
```

4. Проверил, что multitool читает обновляемый файл tulsi.txt

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


------

### Задание 2. Создать DaemonSet приложения, которое может прочитать логи ноды.

1. Создал DaemonSet приложения, состоящего из multitool.   
[daemon](https://github.com/Heimdier/DEV/blob/main/Kube/2.1/daemon.yml)
  
2. Обеспечить возможность чтения файла `/var/log/syslog` кластера MicroK8S.
```shell
    spec:
      containers:
      - name: multi
        image: wbitt/network-multitool
        volumeMounts:
        - name: syslog
          mountPath: /cluster-log
          subPath: syslog
          readOnly: true
      volumes:
      - name: syslog
        hostPath:
          path: /var/log
```
3. Запустил daemonset

```shell
maha@mahavm:~/kuber/2-1$ kubectl apply -f log-daemon.yml
\daemonset.apps/log-daemon created
maha@mahavm:~/kuber/2-1$ kubectl get daemonsets.apps 
NAME         DESIRED   CURRENT   READY   UP-TO-DATE   AVAILABLE   NODE SELECTOR   AGE
log-daemon   1         1         1       1            1           <none>          70s
maha@mahavm:~/kuber/2-1$ kubectl get pod
NAME               READY   STATUS    RESTARTS         AGE
log-daemon-vhzvr   1/1     Running   0                76s

```
4. залез в под посмотреть логи
```shell
maha@mahavm:~/kuber/2-1$ kubectl exec -it log-daemon-vhzvr -- /bin/bash
log-daemon-vhzvr:/# tail -10 cluster-log
2025-03-16T20:08:05.677493+05:00 mahavm systemd[1]: run-containerd-runc-k8s.io-422fc7828e8d7fe50bff5b2bad463f4ef18212b84fa6eb28b7209f603a397d52-runc.a0Q8Mo.mount: Deactivated successfully.
2025-03-16T20:08:10.052743+05:00 mahavm systemd[1]: Cannot find unit for notify message of PID 770961, ignoring.
2025-03-16T20:08:15.107308+05:00 mahavm systemd[1]: Cannot find unit for notify message of PID 770977, ignoring.
2025-03-16T20:08:15.401956+05:00 mahavm systemd[1]: Cannot find unit for notify message of PID 771047, ignoring.
2025-03-16T20:08:31.137196+05:00 mahavm systemd[1]: Cannot find unit for notify message of PID 771432, ignoring.
2025-03-16T20:08:36.570992+05:00 mahavm systemd[1]: Cannot find unit for notify message of PID 771616, ignoring.
2025-03-16T20:08:36.959557+05:00 mahavm systemd[1]: Cannot find unit for notify message of PID 771686, ignoring.
2025-03-16T20:08:45.679203+05:00 mahavm systemd[1]: run-containerd-runc-k8s.io-c664f37781aa68eca24e5d75919102911553d91398b440f8628f269f53a772b2-runc.Ewg9rh.mount: Deactivated successfully.
2025-03-16T20:08:47.666619+05:00 mahavm systemd[1]: Cannot find unit for notify message of PID 771947, ignoring.
2025-03-16T20:08:55.672020+05:00 mahavm systemd[1]: run-containerd-runc-k8s.io-c664f37781aa68eca24e5d75919102911553d91398b440f8628f269f53a772b2-runc.6xtYKv.mount: Deactivated successfully.
log-daemon-vhzvr:/# 
```


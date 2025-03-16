### Задание 1 Создать Deployment приложения, состоящего из двух контейнеров и обменивающихся данными.

1. Создать Deployment приложения, состоящего из контейнеров busybox и multitool.
[deploy](https://github.com/Heimdier/DEV/blob/main/Kube/2.1/deploy.yml)

2. Сделать так, чтобы busybox писал каждые пять секунд в некий файл в общей директории.
3. Обеспечить возможность чтения файла контейнером multitool.
4. Продемонстрировать, что multitool может читать файл, который периодоически обновляется.
5. Предоставить манифесты Deployment в решении, а также скриншоты или вывод команды из п. 4.

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

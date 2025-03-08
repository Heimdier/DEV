## Задание 1.
#### Создал Deployment из двух контейнеров (nginx и multitool) с количеством реплик 3 шт.
[deploy.yml](https://github.com/Heimdier/DEV/blob/main/Kube/1.4./deploy.yml)    
```shell
maha@mahavm:~/kuber/1-4$ kubectl apply -f deploy.yml
deployment.apps/2cc created

maha@mahavm:~/kuber/1-4$ kubectl get pods
NAME                  READY   STATUS    RESTARTS       AGE
2cc-c498c4cf8-cqfnk   2/2     Running   0              8s
2cc-c498c4cf8-hr667   2/2     Running   0              8s
2cc-c498c4cf8-zstqn   2/2     Running   0              8s
```

#### Создал Service для доступа до контейнеров по порту 9001 — nginx 80, по 9002 — multitool 8080   
[service.yml](https://github.com/Heimdier/DEV/blob/main/Kube/1.4./service.yml)
```shell
maha@mahavm:~/kuber/1-4$ kubectl get service
NAME         TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)             AGE
kubernetes   ClusterIP   10.152.183.1     <none>        443/TCP             27d
myserv       ClusterIP   10.152.183.122   <none>        9001/TCP,9002/TCP   3m36s
```

####  Создал отдельный Pod с multitool
[multi-pod.yml](https://github.com/Heimdier/DEV/blob/main/Kube/1.4./multi-pod.yml)

####  Проверил доступ из пода с multitool до приложений по разным портам
![image](https://github.com/user-attachments/assets/330caaf4-3ad8-4da9-be4c-ee8c01790870)

![image](https://github.com/user-attachments/assets/c6d5318d-3d05-4b1b-900a-9dada5fcd166)

## Задание 2. Создать Service и обеспечить доступ к приложениям снаружи кластера

#### 1. Создать отдельный Service приложения из Задания 1 с возможностью доступа снаружи кластера к nginx, используя тип NodePort.


#### 2. Продемонстрировать доступ с помощью браузера или curl с локального компьютера.


#### 3. Предоставить манифест и Service в решении, а также скриншоты или вывод команды п.2.





#### 4. Продемонстрировать доступ с помощью curl по доменному имени сервиса.
#### 5. Предоставить манифесты Deployment и Service в решении, а также скриншоты или вывод команды п.4.

#### 2. При помощи `ansible-galaxy` скачать себе эту роль.  

```shell
 ansible-galaxy role install -p roles -r requirements.yml
Starting galaxy role install process
- extracting clickhouse to /ansible/08-ansible-04-role/playbook/roles/clickhouse
- clickhouse (1.11.0) was installed successfully

```



#### 3. Создать новый каталог с ролью при помощи:   
`ansible-galaxy role init vector-role`  
`ansible-galaxy role init lighthouse-role`  

```shell

- Role lighthouse-role was created successfully
```

## Задание 1. Создать Deployment приложений backend и frontend
#### Создал Deployment приложения frontend из образа nginx с количеством реплик 3 шт.
[deploy.yml](https://github.com/Heimdier/DEV/blob/main/Kube/1.4./deploy.yml)    

#### Создал Deployment приложения backend из образа multitool.
[deploy-multitool](https://github.com/Heimdier/DEV/blob/main/Kube/1.5./deploy-multitool.yml)

#### Создал Deployment приложения frontend из образа nginx с количеством реплик 3 шт.  
[deploy-nginx](https://github.com/Heimdier/DEV/blob/main/Kube/1.5./deploy-nginx.yml)

#### Создал сервисы, которые обеспечат доступ к обоим приложениям внутри кластера.   
[service-backend](https://github.com/Heimdier/DEV/blob/main/Kube/1.5./service-backend.yml)
[service-frontend](https://github.com/Heimdier/DEV/blob/main/Kube/1.5./service-frontend.yml)

#### проверил, что приложения видят друг друга с помощью Service.   



## Задание 2. Создать Ingress и обеспечить доступ к приложениям снаружи кластера
#### Включил Ingress-controller в MicroK8S:  `microk8s enable ingress`

![image](https://github.com/user-attachments/assets/86037b7d-e73f-41d2-b37f-4f903bc60d4b)

#### Создал Ingress, обеспечивающий доступ снаружи по IP-адресу кластера MicroK8S так, чтобы при запросе только по адресу открывался frontend а при добавлении /api - backend.   


#### проверил доступ с локального компьютера.   

#### Манифесты и скриншоты или вывод команды п.2.   













```shell
maha@mahavm:~/kuber/1-4$ kubectl apply -f deploy.yml
deployment.apps/2cc created

```

#### Создал Service для доступа до контейнеров по порту 9001 — nginx 80, по 9002 — multitool 8080   
[service.yml](https://github.com/Heimdier/DEV/blob/main/Kube/1.4./service.yml)
```shell
maha@mahavm:~/kuber/1-4$ kubectl get service

```

####  Создал отдельный Pod с multitool
[multi-pod.yml](https://github.com/Heimdier/DEV/blob/main/Kube/1.4./multi-pod.yml)

####  Проверил доступ из пода с multitool до приложений по разным портам
![image](https://github.com/user-attachments/assets/330caaf4-3ad8-4da9-be4c-ee8c01790870)

![image](https://github.com/user-attachments/assets/c6d5318d-3d05-4b1b-900a-9dada5fcd166)

## Задание 2. Создать Service и обеспечить доступ к приложению снаружи кластера

#### 1. Создать отдельный Service приложения из Задания 1 с возможностью доступа снаружи кластера к nginx, используя тип NodePort.
[service-ext.yml](https://github.com/Heimdier/DEV/blob/main/Kube/1.4./service-ext.yml)  

![image](https://github.com/user-attachments/assets/46c96e47-4d37-4b32-867a-d6e798c5c431)

#### 2. обратился к nginx через внешний порт сервиса 30001
![image](https://github.com/user-attachments/assets/c253bc3c-d250-4480-8eb7-16b5628d2a26)





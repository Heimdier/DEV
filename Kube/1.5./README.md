## Задание 1. Создать Deployment приложений backend и frontend
#### Создал Deployment приложения frontend из образа nginx с количеством реплик 3 шт
[deploy.yml](https://github.com/Heimdier/DEV/blob/main/Kube/1.4./deploy.yml)    

#### Создал Deployment приложения backend из образа multitool
[deploy-multitool](https://github.com/Heimdier/DEV/blob/main/Kube/1.5./deploy-multitool.yml)

#### Создал Deployment приложения frontend из образа nginx с количеством реплик 3 шт  
[deploy-nginx](https://github.com/Heimdier/DEV/blob/main/Kube/1.5./deploy-nginx.yml)

#### Создал сервисы, которые обеспечат доступ к обоим приложениям внутри кластера.   
[service-backend](https://github.com/Heimdier/DEV/blob/main/Kube/1.5./service-backend.yml)   
[service-frontend](https://github.com/Heimdier/DEV/blob/main/Kube/1.5./service-frontend.yml)

#### проверил, что приложения видят друг друга с помощью Service.   
![image](https://github.com/user-attachments/assets/790f442d-a4a6-47fc-a840-7694b6c1cfd8)

```shell
maha@mahavm:~/kuber/1-5$ kubectl exec -it dm-cbd484948-89xwd -- /bin/bash
dm-cbd484948-89xwd:/# curl http://svc-n
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
    body {
        width: 35em;
        margin: 0 auto;
        font-family: Tahoma, Verdana, Arial, sans-serif;
    }
</style>
</head>
<body>
<h1>Welcome to nginx!</h1>
<p>If you see this page, the nginx web server is successfully installed and
working. Further configuration is required.</p>

<p>For online documentation and support please refer to
<a href="http://nginx.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://nginx.com/">nginx.com</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>
dm-cbd484948-89xwd:/# 


```

## Задание 2. Создать Ingress и обеспечить доступ к приложениям снаружи кластера
#### Включил Ingress-controller в MicroK8S:  `microk8s enable ingress`

![image](https://github.com/user-attachments/assets/86037b7d-e73f-41d2-b37f-4f903bc60d4b)

#### Создал Ingress, обеспечивающий доступ так, чтобы при запросе только по адресу открывался frontend а при добавлении /api - backend.   
[ingress](https://github.com/Heimdier/DEV/blob/main/Kube/1.5./ingress.yml)

#### проверил доступ с локального компьютера - при обращении к просто адресу и адресу с /api запрос направляется на разные сервисы и соответственно поды   

![image](https://github.com/user-attachments/assets/25856c6c-2128-4218-9f20-48aea328292e)








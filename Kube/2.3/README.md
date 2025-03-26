### Задание 1. Создать Deployment приложения и решить возникшую проблему с помощью ConfigMap. Добавить веб-страницу

1. Создал Deployment приложения, состоящего из контейнеров nginx и multitool   
 [dep-ng-mu](https://github.com/Heimdier/DEV/blob/main/Kube/2.3/dep-ng-mu.yml)

2. С помощью configmap передал номер порта в мультитул  [config-map-mu](https://github.com/Heimdier/DEV/blob/main/Kube/2.3/config-map-mu.yml)    
```shell
apiVersion: v1
kind: ConfigMap
metadata:
  name: mu-port
data:
  HTTP_PORT: "8888"
```

3. С помощью configmap передал html страничку для nginx  [config-map-nx](https://github.com/Heimdier/DEV/blob/main/Kube/2.3/config-map-nx.yml)
```shell
apiVersion: v1
kind: ConfigMap
metadata:
  name: nginx-index
data:
  index.html: |
    <html>
    <head>
    <title>Welcome!</title>
    </head>
    <body>
    <H1>Douzoyoroshiku</H1>
    <P> Watashi wa Viktor </P>
    <P> Hoteru wa doko desu ka?</P>
    </body>
    </html>
```

4. Подготовил сервис для подключения к nginx [service-nx](https://github.com/Heimdier/DEV/blob/main/Kube/2.3/service-nx.yml)

5. Стартовал манифесты
```shell
maha@mahavm:~/kuber/2-3$ kubectl apply -f config-map-mu.yml
configmap/mu-port created
maha@mahavm:~/kuber/2-3$ kubectl apply -f config-map-nx.yml
configmap/nginx-index created
maha@mahavm:~/kuber/2-3$ kubectl apply -f dep-ng-mu.yml
deployment.apps/2app created
maha@mahavm:~/kuber/2-3$ kubectl apply -f service-nx.yml
service/service-nx created
```
![image](https://github.com/user-attachments/assets/fed05a12-40d8-4be9-8f4f-e58f40e3dbcf)

6. Зашел в отдельный под и постучался curl на сервис

![image](https://github.com/user-attachments/assets/77e5612a-2131-413d-861e-528e98b788bf)

------

### Задание 2. Создать приложение с вашей веб-страницей, доступной по HTTPS     

1. Создать Deployment приложения, состоящего из Nginx.     
 [dep-ng](https://github.com/Heimdier/DEV/blob/main/Kube/2.3/dep-ng.yml)

2. Создать собственную веб-страницу и подключить её как ConfigMap к приложению.     
[config-map-nx2](https://github.com/Heimdier/DEV/blob/main/Kube/2.3/config-map-nx2.yml)
```shell
apiVersion: v1
kind: ConfigMap
metadata:
  name: nginx-index2
data:
  index.html: |
    <html>
    <head>
    <title>Welcome!</title>
    </head>
    <body>
    <H1>Antananarivu</H1>
    <P> zanzibar </P>
    <P> TANZANIA</P>
    </body>
    </html>
```

![image](https://github.com/user-attachments/assets/1a08e540-8ba0-459c-91f1-e0167c1f00d3)

3. Выпустить самоподписной сертификат SSL. Создать Secret для использования сертификата.    
```shell
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout tls.key -out tls.crt -subj "/CN=tuktuk.com"
```
![image](https://github.com/user-attachments/assets/61346d19-5533-4300-ac72-f444f7108322)


4. Создать Ingress и необходимый Service, подключить к нему SSL в вид. Продемонстировать доступ к приложению по HTTPS.

[ingress](https://github.com/Heimdier/DEV/blob/main/Kube/2.3/ingress.yml)
[svc-nx](https://github.com/Heimdier/DEV/blob/main/Kube/2.3/svc-nx.yml)

5. Предоставить манифесты, а также скриншоты или вывод необходимых команд.



   [deploy-nginx](https://github.com/Heimdier/DEV/blob/main/Kube/1.5./deploy-nginx.yml)

#### Создал Deployment приложения backend из образа multitool

```shell
  encode base 64:
  echo `dsfa;lksjals` | base64 --decode

```



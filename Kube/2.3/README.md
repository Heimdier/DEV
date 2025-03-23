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

3. Решить возникшую проблему с помощью ConfigMap.
```shell
maha@mahavm:~/kuber/2-3$ kubectl apply -f config-map-mu.yml
configmap/mu-port created
maha@mahavm:~/kuber/2-3$ kubectl apply -f config-map-nx.yml
configmap/nginx-index created
maha@mahavm:~/kuber/2-3$ kubectl apply -f dep-ng-mu.yml
deployment.apps/2app created
```
![image](https://github.com/user-attachments/assets/fed05a12-40d8-4be9-8f4f-e58f40e3dbcf)



3. Продемонстрировать, что pod стартовал и оба конейнера работают.


4. Сделать простую веб-страницу и подключить её к Nginx с помощью ConfigMap. Подключить Service и показать вывод curl или в браузере.


5. Предоставить манифесты, а также скриншоты или вывод необходимых команд.



------

### Задание 2. Создать приложение с вашей веб-страницей, доступной по HTTPS    

1. Создать Deployment приложения, состоящего из Nginx.


2. Создать собственную веб-страницу и подключить её как ConfigMap к приложению.


3. Выпустить самоподписной сертификат SSL. Создать Secret для использования сертификата.


4. Создать Ingress и необходимый Service, подключить к нему SSL в вид. Продемонстировать доступ к приложению по HTTPS.


5. Предоставить манифесты, а также скриншоты или вывод необходимых команд.



   [deploy-nginx](https://github.com/Heimdier/DEV/blob/main/Kube/1.5./deploy-nginx.yml)

#### Создал Deployment приложения backend из образа multitool

```shell
  encode base 64:
  echo `dsfa;lksjals` | base64 --decode

```



####  1. Подготовить Helm-чарт для приложения

1. Необходимо упаковать приложение в чарт для деплоя в разные окружения. 
2. Каждый компонент приложения деплоится отдельным deployment’ом или statefulset’ом.
3. В переменных чарта измените образ приложения для изменения версии.

------
####  2. Запустить две версии в разных неймспейсах

1. Подготовив чарт, необходимо его проверить. Запуститe несколько копий приложения.
2. Одну версию в namespace=app1, вторую версию в том же неймспейсе, третью версию в namespace=app2.
3. Продемонстрируйте результат.
------




### Задание 1. Подготовить Helm-чарт для приложения

1. создал базовую структуру под чарт `helm create 2app-chart`
2. взял два приложения nginx и multitool для упаковки в чарт
3. в [values](https://github.com/Heimdier/DEV/blob/main/Kube/2.5/2app-chart/values.yml) описал переменные для подстановки
```shell
nginx:
  replicaCount: 2
  image:
    repository: nginx
    tag: "latest"

multi:
  replicaCount: 2
  image:
    repository: wbitt/network-multitool
    tag: alpine-extra
  containerPort: 8888
  HTTP_PORT: "8888"
```

4. В templates описал два деплоя [dep-nginx](https://github.com/Heimdier/DEV/blob/main/Kube/2.5/2app-chart/templates/dep-nginx.yml) и  [dep-multi](https://github.com/Heimdier/DEV/blob/main/Kube/2.5/2app-chart/templates/dep-multi.yml)
5. Установил чарт `helm install netology ./2app-chart`

![image](https://github.com/user-attachments/assets/2f8836fe-447b-4f03-914e-2d6235b8d3c0)   
![image](https://github.com/user-attachments/assets/2f17c57d-09fe-478d-98c9-718235315a11)    

6. поменял образ multitool на extra и сдепал upgrade чарта   
```shell
multi:
  replicaCount: 2
  image:
    repository: wbitt/network-multitool
    tag: alpine-extra
  containerPort: 8888
  HTTP_PORT: "8888"
```
   
![image](https://github.com/user-attachments/assets/f3dcd2ad-fbbc-45d6-831d-2304cdf5b746)    
![image](https://github.com/user-attachments/assets/8d88a2cb-ec66-4b50-bd1d-89951e0e2e59)   

------
### Задание 2. Запустить две версии в разных неймспейсах

1. создал два namespace
   
```
kubectl create namespace app1
kubectl create namespace app2
```

2. Создал две версии приложения в одном неймспейс `namespace app1`
   
 ![image](https://github.com/user-attachments/assets/df14daf4-1050-46f2-abf0-02babae37fd2)

3. И одну версию в другом неймспейс `namespace app2`

![image](https://github.com/user-attachments/assets/f58d533a-7949-4929-a3f1-348a4ef922be)




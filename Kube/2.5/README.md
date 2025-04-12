### Задание 1. Подготовить Helm-чарт для приложения

1. Необходимо упаковать приложение в чарт для деплоя в разные окружения. 
2. Каждый компонент приложения деплоится отдельным deployment’ом или statefulset’ом.
3. В переменных чарта измените образ приложения для изменения версии.

------
### Задание 2. Запустить две версии в разных неймспейсах

1. Подготовив чарт, необходимо его проверить. Запуститe несколько копий приложения.
2. Одну версию в namespace=app1, вторую версию в том же неймспейсе, третью версию в namespace=app2.
3. Продемонстрируйте результат.
------

1. создал базовую структуру под чарт `helm create 2app-chart`
2. взял два приложения nginx и multitool для упаковки в чарт
3. в [values](https://github.com/Heimdier/DEV/blob/main/Kube/2.5/values.yml) описал переменные для подстановки
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

4. в templates описал два деплоя [dep-nginx](https://github.com/Heimdier/DEV/blob/main/Kube/2.5/templates/dep-nginx.yml) и  [dep-multi](https://github.com/Heimdier/DEV/blob/main/Kube/2.5/templates/dep-multi.yml)
5. 




[deploy-nginx](https://github.com/Heimdier/DEV/blob/main/Kube/1.5./deploy-nginx.yml)

#### Создал Deployment приложения backend из образа multitool

```shell


  encode base 64:
  echo `dsfa;lksjals` | base64 --decode

```

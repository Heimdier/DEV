#### 1. Создал Deployment из двух контейнеров (nginx и multitool) с количеством реплик 3 шт.
[playbook/requirements.yml](playbook/requirements.yml)

#### 2. Создать Service, который обеспечит доступ внутри кластера до контейнеров приложения из п.1 по порту 9001 — nginx 80, по 9002 — multitool 8080.
#### 3. Создать отдельный Pod с приложением multitool и убедиться с помощью curl, что из пода есть доступ до приложения из п.1 по разным портам в разные контейнеры.
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

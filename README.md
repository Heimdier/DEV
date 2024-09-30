Задача 1
https://hub.docker.com/repository/docker/maibenben/custom-nginx/general

Задача 2
![2024-09-29_12-07-59](https://github.com/user-attachments/assets/3244e238-a7d6-4ffa-bd57-9d6c2b035a21)

Задача 3
![2024-09-29_12-23-32](https://github.com/user-attachments/assets/05920a91-875b-4459-a12c-c869954cc836)
- в сеансе CTRL-c посылает контейнеру сигнал SIGINT и завершает его, если использовать ключ --sig-proxy=false то CTRL-c завершит только сеанс
- в интерактивном режиме для выхода из сеанса CTRL-p CTRL-q

![2024-09-29_12-57-17](https://github.com/user-attachments/assets/20c132cf-7d64-4b5f-b18c-6b5124b225a1)
![2024-09-29_13-08-31](https://github.com/user-attachments/assets/da888784-af3a-409c-8a04-a936ee85277e)
![2024-09-29_13-45-19](https://github.com/user-attachments/assets/d9c2d702-f35d-435c-b2a3-f9676c3519b5)
в контейнер nginx стал слушать порт 81 вместо 80, а на хосте маппинг настроен на порт 80. После остановки контейнера и правки конфига с маппингом на порт 81 страница nginx снова стала открываться

Задача 4
![task-4](https://github.com/user-attachments/assets/6bc758e5-5e68-4731-8639-2fc6a5425f7b)

Задача 5
![task-5](https://github.com/user-attachments/assets/c283a735-f6d8-405b-b9b6-e610b20a98ed)
был запущен compose.yaml так как он имеет больший приоритет, если нет compose.yaml то запустится если есть docker-compose.yaml 

# Отредактировал файл compose.yaml
![image](https://github.com/user-attachments/assets/7720f42f-faf0-4f84-acb9-15b5452c37e3)
![image](https://github.com/user-attachments/assets/8e431060-4b0f-402b-a40c-2c47bccf20f3)

залил custom-nginx в локальный registry
![image](https://github.com/user-attachments/assets/336c5d7f-348b-41c3-a138-9e56443e9a1c)

задеплоил компоуз nginx через portainer
![2024-09-30_14-15-48](https://github.com/user-attachments/assets/e78f90a2-e6d4-4aaa-84f5-a8c9b65eb5fd)

inspect контейнера с nginx
![2024-09-30_14-28-58](https://github.com/user-attachments/assets/11e0b1f5-91b4-4f5d-9b92-f987fb43f7b7)

удалил compose.yaml и запустил docker compose up -d
![2024-09-30_14-38-09](https://github.com/user-attachments/assets/709cada6-270e-4b9e-b63e-8d1211245ab7)
возник warning что есть запущенный контейнер не описанный в compose файлах
с помощью ключа --remove-orphans удаляется контенер tmp-portainer-1 которого нет в компоуз файле
![2024-09-30_14-55-32](https://github.com/user-attachments/assets/6d96fc46-8937-4b90-b694-9877263106c0)




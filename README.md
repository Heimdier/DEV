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
![2024-09-29_13-29-23](https://github.com/user-attachments/assets/a5b85822-bde5-40f2-8174-0db8e6d27fb0)
в контейнер nginx стал слушать порт 81 вместо 80, а на хосте маппинг настроен на порт 80. После остановки контейнера и правки конфига с маппингом на порт 81 страница nginx снова стала открываться


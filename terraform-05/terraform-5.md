-------- Задание 1 ----------

натравил TFLINT на 04/src и 04/demonstration1    
![image](https://github.com/user-attachments/assets/990b3f8b-1256-4706-9282-90677ee5fb98)
![image](https://github.com/user-attachments/assets/0575ee0e-54cf-4470-bf53-9246bffbbbce)

обнаруженные ошибки TFLINT:
- не указана версия провайдера
- переменные объявлены но не используются
- рекомендуется использовать ссылки на Git с указанием ревизии хэша коммита


-------- Задание 2 ----------    

 настроил YDB, S3 bucket, yandex service account и смигрировал state в мой бакет   
![image](https://github.com/user-attachments/assets/48907078-802d-4663-a4c4-689055505671)

выполнил apply с блокировкой    
![image](https://github.com/user-attachments/assets/c0ec899a-53a3-4fe8-8146-52d2cd9ce199)

в таблице блокировок появилась запись    
![image](https://github.com/user-attachments/assets/bf19ce69-b426-45a3-9e75-35930e7a6ce2)

заблокировал state открыв terraform console    
![image](https://github.com/user-attachments/assets/451f6847-28ae-4e42-abac-9abe14db3338)

из другого окна запустил apply и получил отказ с сообщением о заблокированном state    
![image](https://github.com/user-attachments/assets/f30fa9a0-4a54-4a37-9865-93061a4c82b0)







 

 


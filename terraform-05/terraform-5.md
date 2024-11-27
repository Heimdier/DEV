-------- Задание 1 ----------

натравил TFLINT и checkov на 04/src и 04/demonstration1  

![image](https://github.com/user-attachments/assets/990b3f8b-1256-4706-9282-90677ee5fb98)
![image](https://github.com/user-attachments/assets/0575ee0e-54cf-4470-bf53-9246bffbbbce)
![image](https://github.com/user-attachments/assets/46ad149b-ed0a-4ad2-b898-028d0aeff639)

обнаруженные ошибки:
- не указана версия провайдера
- переменные объявлены но не используются
- рекомендуется использовать ссылки на Git с указанием ревизии хэша коммита
- не назначена security group для network интерфейса


-------- Задание 2 ----------    

 прописал в provider.tf S3 bucket 
 
![image](https://github.com/user-attachments/assets/48907078-802d-4663-a4c4-689055505671)

смигрировал state в мой бакет и выполнил apply       

![image](https://github.com/user-attachments/assets/29e38d30-6272-4cec-bf01-9c4cbf5d7ff1)

в таблице блокировок появилась запись 

![image](https://github.com/user-attachments/assets/bf19ce69-b426-45a3-9e75-35930e7a6ce2)

заблокировал state открыв terraform console  

![image](https://github.com/user-attachments/assets/a368ba6c-be38-48ed-9f3e-234df5eae02b)

из другого окна запустил apply и получил отказ с сообщением о заблокированном state    

![image](https://github.com/user-attachments/assets/f30fa9a0-4a54-4a37-9865-93061a4c82b0)  

-------- Задание 3 ----------    

перешел на ветку terraform-hotfix

![image](https://github.com/user-attachments/assets/2c270bda-2af7-416b-abdf-f32772583d8a)

натравил tflint и checkov      

![image](https://github.com/user-attachments/assets/362700b1-b60f-41dd-984b-c63ba15f548a)
![image](https://github.com/user-attachments/assets/b6d0a759-a0cd-409a-b483-0054d4fa2931)


- создал новый pull request 'terraform-hotfix' --> 'terraform-05'. 
- Вставьте в комментарий PR результат анализа tflint и checkov, план изменений инфраструктуры из вывода команды terraform plan.
- Пришлите ссылку на PR для ревью. Вливать код в 'terraform-05' не нужно







 

 


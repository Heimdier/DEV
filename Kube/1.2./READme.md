
---- Задание 1 ----

создал манифест для Pod с именем hello-world    
https://github.com/Heimdier/DEV/blob/main/Kube/1.2./echo-pod.yml

запустил под   

![image](https://github.com/user-attachments/assets/1656d8c8-f07d-4224-9f49-ef5d3fa8ac5a)  

![image](https://github.com/user-attachments/assets/f431a6f8-d0cd-4108-a8c4-50096befd2af)

сделал проброс порта для подключения к pod    

![image](https://github.com/user-attachments/assets/fa2d7ec6-6f78-44f9-9a14-3801b3129e78)

Подключился к Pod, смотрим что выдает   

![image](https://github.com/user-attachments/assets/1c76b028-976a-4c55-838d-ab8d03c365f0)


---- Задание 2 ----

создал манифест для Pod с именем netology-web    
https://github.com/Heimdier/DEV/blob/main/Kube/1.2./net-pod.yml

поднял под:   

![image](https://github.com/user-attachments/assets/27b8971c-1b4a-4e1a-bf50-17327204b91c)

манифест для сервиса с лэйбл пода netology-web     
https://github.com/Heimdier/DEV/blob/main/Kube/1.2./service.yml

поднял сервис    

![image](https://github.com/user-attachments/assets/838b85d5-6615-4fac-b39d-f4051c377a71)
![image](https://github.com/user-attachments/assets/da5171c6-e4dc-45bd-84f2-ac61ac0ce10c)

к сервису подключен только netology-web pod    

![image](https://github.com/user-attachments/assets/6fd1afcb-ed77-4456-a992-8e71ee64d6ae)

пробросил порт  

![image](https://github.com/user-attachments/assets/ca3caa8e-d094-4a6f-ac15-ac258be29c69)

Подключился с браузера   

![image](https://github.com/user-attachments/assets/10772000-3213-4c50-9201-a91c46e4e326)













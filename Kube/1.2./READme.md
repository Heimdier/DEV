
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

манифест для сервиса с лэйблами моих подов
https://github.com/Heimdier/DEV/blob/main/Kube/1.2./service.yml

поднял сервис    

![image](https://github.com/user-attachments/assets/f74db858-c85b-410e-bc0c-ca7d5f7c4886)

![image](https://github.com/user-attachments/assets/bca42c3d-d8a7-4dfe-b451-f4b817858cc2)


Подключиться локально к Service с помощью kubectl port-forward и вывести значение (curl или в браузере).













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




Использовать image — gcr.io/kubernetes-e2e-test-images/echoserver:2.2.
Создать Service с именем netology-svc и подключить к netology-web.
Подключиться локально к Service с помощью kubectl port-forward и вывести значение (curl или в браузере).












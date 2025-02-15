---- Задание 1 ----   

создал манифест на Deployment https://github.com/Heimdier/DEV/blob/main/Kube/1.3./deploy.yml

запустил   

![image](https://github.com/user-attachments/assets/909f66bb-8e1f-45e0-ab15-7f33e8ab51dd)

один под с ошибкой    
![image](https://github.com/user-attachments/assets/5a8ff165-b35e-4d4b-8eb0-335b363132c4)

в образе мультитул есть nginx, он занимает порт 80, второй контейнер с nginx не может занять 80 порт и возникает ошибка    
переназначил порт nginx в мультитул с помощью переменной окружения     
        env:
        - name: HTTP_PORT
          value: "3333"

![image](https://github.com/user-attachments/assets/046d84d5-8617-4cbe-867f-0523a41e521f)

добавил   replicas: 2  в манифест деплоиментс - реплика раскаталась успешно

![image](https://github.com/user-attachments/assets/16a31df5-b44d-4760-9dc9-a546d9b02ea1)

написал сервис с лейбл созданных выше подов   https://github.com/Heimdier/DEV/blob/main/Kube/1.3./service-rep.yml   
и запустил kubectl apply -f service-rep.yml  

![image](https://github.com/user-attachments/assets/a6e6c502-bd56-42ef-bb1b-f09def08eaff)

написал манифест для пода под multitool, https://github.com/Heimdier/DEV/blob/main/Kube/1.3./multi-pod.yml  
запустил

![image](https://github.com/user-attachments/assets/d1758b1a-2ae9-4028-ac7c-3c39d70f5647)

зашел в контейнер пода с multitool   

![image](https://github.com/user-attachments/assets/0cfa3900-5584-4e52-a13b-9d719e123cdb)

с помощью curl проверил доступ до контейнеров под деплойментс   

![image](https://github.com/user-attachments/assets/561c03c2-2af9-45f2-8bee-7fe8ef9e657f)

доступ через сервис    

![image](https://github.com/user-attachments/assets/401e01c6-5be3-4d18-b3f9-ac0109c002ee)


---- Задание 2 ----    

Написал деплоймент с nginx и init контейнером который ожидает когда nslookup откликнется на имя сервиса   
https://github.com/Heimdier/DEV/blob/main/Kube/1.3./deploy2.yml     

запустил деплоймент - под не стартует, так как ждет инит контейнер, который ждет сервис     

![image](https://github.com/user-attachments/assets/0d4ae38a-b653-4598-b35d-a74658099349) 

написал и стартанул service2 https://github.com/Heimdier/DEV/blob/main/Kube/1.3./service2.yml      

![image](https://github.com/user-attachments/assets/849ceeb3-4c60-4515-a9e3-6dacb30d22cd)   

теперь инит контейнер увидел сервис и под запустился   

![image](https://github.com/user-attachments/assets/790ca5e0-5735-4897-87e0-8f6866e3c9bd)





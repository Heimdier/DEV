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





Создать Deployment приложения, состоящего из двух контейнеров — nginx и multitool. Решить возникшую ошибку.
После запуска увеличить количество реплик работающего приложения до 2.
Продемонстрировать количество подов до и после масштабирования.
Создать Service, который обеспечит доступ до реплик приложений из п.1.
Создать отдельный Pod с приложением multitool и убедиться с помощью curl, что из пода есть доступ до приложений из п.1.




---- Задание 2 ----


Создать Deployment приложения nginx и обеспечить старт контейнера только после того, как будет запущен сервис этого приложения.
Убедиться, что nginx не стартует. В качестве Init-контейнера взять busybox.
Создать и запустить Service. Убедиться, что Init запустился.
Продемонстрировать состояние пода до и после запуска сервиса.


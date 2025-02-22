в yandex cloud создал 3 VM под teamcity:    

![image](https://github.com/user-attachments/assets/ffe0f365-aab6-4999-943a-872327f52ec0)

авторизовал агента    

![image](https://github.com/user-attachments/assets/3f501e2c-31d9-4dfd-aefe-92c2bbde50da)

сделал форк репозитария https://github.com/Heimdier/ci-cd-5.git    
подключил репозитарий    

![image](https://github.com/user-attachments/assets/f909a393-05cc-415c-a4fe-fbd1eb3eef46)
  
установил nexus с помощью ansible    

![image](https://github.com/user-attachments/assets/47f0c9d5-85a1-45f7-80b2-b78f7072adbf)

Создал проект в teamcity на основе fork и сделал autodetect конфигурации  

![image](https://github.com/user-attachments/assets/5fa47cee-d1a7-4104-a873-a1d9f5a2ee20)

запустил первую сборку    

![image](https://github.com/user-attachments/assets/45ec0cc5-f1b8-4c64-897d-ac4fe150adf9)

Поменял условия сборки и добавил файл конфигураций settings.xml:    

![image](https://github.com/user-attachments/assets/36f52a41-54d8-40a6-8dff-594e723eaf23)

в pom.xml указал свой nexus    

![image](https://github.com/user-attachments/assets/434fb6da-fefc-4fee-a4a0-7e89b6d2ca1e)









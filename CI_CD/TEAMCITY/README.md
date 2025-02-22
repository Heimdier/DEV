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

![image](https://github.com/user-attachments/assets/d4591571-535e-44aa-927b-b6942f796de5)

запустил первую сборку по ветке main

![image](https://github.com/user-attachments/assets/1b397afb-5831-4aac-aa86-7043700be288)

Поменял условия сборки и добавил файл конфигураций settings.xml:    

![image](https://github.com/user-attachments/assets/36f52a41-54d8-40a6-8dff-594e723eaf23)

в pom.xml указал свой nexus    

![image](https://github.com/user-attachments/assets/434fb6da-fefc-4fee-a4a0-7e89b6d2ca1e)

запустил билд - успешно    

![image](https://github.com/user-attachments/assets/ad250cc7-07e0-470c-b496-a574f3f4fad3)

в nexus релиз залился    

![image](https://github.com/user-attachments/assets/fcc35298-6caf-4345-8da6-a73d7cf30367)

создал новую ветку в репозитарии   feature/add_reply

![image](https://github.com/user-attachments/assets/a04dc4f0-dcf0-4df2-8ef9-ac8827d988ef)

добавил новый метод    

![image](https://github.com/user-attachments/assets/412aeb51-a819-4c3a-802f-f6d612bf0139)

и тест    

![image](https://github.com/user-attachments/assets/368e89f7-375f-4569-a306-bcf8c05ef66b)













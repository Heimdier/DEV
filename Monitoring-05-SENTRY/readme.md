------ Задание 1 ------     

 ![image](https://github.com/user-attachments/assets/3fe85be5-2d9b-4122-a5e2-2ca4987a6d97)   
 

------ Задание 2 ------

- Создал проект Python
  
![image](https://github.com/user-attachments/assets/6d6feb69-da9e-4e62-9cef-ed071dd1d789)

- запустил python код для проверки отсылки событий в sentry:

import sentry_sdk
sentry_sdk.init(
    dsn="https://7623f072ba2f1f7b408b1f8d7bdbe3d5@o4508550413746176.ingest.de.sentry.io/4508550441599056",
)
division_by_zero = 1 / 0

![image](https://github.com/user-attachments/assets/666436eb-8107-4c05-856f-9f8591fb5316)


- получил в сентри событие
- 
  ![image](https://github.com/user-attachments/assets/0db03290-61f0-437a-8e2f-2452bb8bc5c9)

  - сделал resolve
  - 
    ![image](https://github.com/user-attachments/assets/2a7544d3-6179-4f59-81e5-2b55b4107f8f)


  



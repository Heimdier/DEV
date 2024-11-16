----- Задание 1 -----   
создал 2 ВМ с помощью вызова двух remote-модулей с label (marketing и analytics)    

![image](https://github.com/user-attachments/assets/be2c9aae-ad35-44e8-b1c7-f68b596fcee0)
![image](https://github.com/user-attachments/assets/8ff9520b-8386-4531-9861-e8c889ce446a)

описал переменные для передачи в cloud-init.yml    
![image](https://github.com/user-attachments/assets/85d4054a-baf8-4de8-8835-3f0f9eefea40)

в cloud-init.yml передал эти переменные и добавил установку nginx  
![image](https://github.com/user-attachments/assets/5de036c6-fcdf-4f85-877b-af1ee57c93f1)

полученные тачки:   
![image](https://github.com/user-attachments/assets/17d8e6fe-cc97-4acc-829f-5a97ba4c1072)

залогинился в созданную ВМ и проверил что nginx на месте    
![image](https://github.com/user-attachments/assets/ba9a5faa-1539-4836-b427-52a566011f7f)


----- Задание 2 -----   
Описал локальный модуль vpc, который создает 1 сеть и 1 подсеть в зоне ru-central1-a    
![image](https://github.com/user-attachments/assets/c482c253-5e78-4120-afb5-0b56ff89fe50)

передал в модуль VPC переменные с названием сети, zone и v4_cidr_blocks   
![image](https://github.com/user-attachments/assets/bdc0de7f-5387-4f1f-b7a1-d537cdf1c1b2)

в output.tf модуль возвращает созданную сеть и подсеть    
![image](https://github.com/user-attachments/assets/48c8671f-ecc4-40d9-ac5e-df8498126049)

скриншот из terraform console о созданном модуле vpc:
![image](https://github.com/user-attachments/assets/eb69d04f-2fa4-4740-93e5-a3e3fd7ef55f)

заменил сеть и подсеть на те что создал в модуле VPC    
![image](https://github.com/user-attachments/assets/ddc4e511-d0e3-44e3-b315-2f564d9d2cbd)

сгенерил описание с помощью terraform-docs (файл docs.md)

----- Задание 3 -----  
 список ресурсов в стейте:   
 ![image](https://github.com/user-attachments/assets/d90dfb4b-179d-4f13-a348-42a7aee70ec7)

 удалил из стейта модуль vpc:   
 ![image](https://github.com/user-attachments/assets/8275785b-ffbd-44a3-973c-eb3271d6a1b7)
 
 удалил из стейта модуль test-vm   
 ![image](https://github.com/user-attachments/assets/a0d4f03a-db7e-40b1-9e9f-8d59af5efcc9)

 одумался и импортировал в стейт всё обратно )  
 ![image](https://github.com/user-attachments/assets/747836b9-d53c-4e16-8a90-6759ec8a7cad)

 terraform plan съел импортированные модули   
 ![image](https://github.com/user-attachments/assets/2fcee985-d694-4ce3-b261-16e6462782ee)




 




----- Задание 1 -----   
создал 2 ВМ с помощью вызова двух remote-модулей с label (marketing и analytics)    

![image](https://github.com/user-attachments/assets/ee29eb54-b415-48cc-85ec-5f94a9d926c1)
![image](https://github.com/user-attachments/assets/f9e358c8-3d82-4cdd-af17-517b0061a5aa)



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




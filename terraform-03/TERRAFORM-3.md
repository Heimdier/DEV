----- Задание 1 -----   
скриншот правил созданной «Группы безопасности» в ЛК Yandex Cloud     

![image](https://github.com/user-attachments/assets/527ba38a-2ee4-4c43-8c2f-d6d35ecd6c5e)

----- Задание 2 -----     
 В файле count-vm.tf создал две ВМ web-1 и web-2 с помощью count loop и назначил группу безопасности    
 ![image](https://github.com/user-attachments/assets/6c42f372-d741-46ad-993d-ae97b40bb9a7)

 в файле for_each-vm.tf создал 2 ВМ для баз данных с именами "main" и "replica" с помощью for_each loop    
 ![image](https://github.com/user-attachments/assets/30d97c20-1937-43f3-8536-d9f316423873)

 Функция file в local-переменной для считывания ключа ~/.ssh/id_rsa.pub   
 ![image](https://github.com/user-attachments/assets/96d44f39-3a29-447a-b0a4-b80480232803)

 ----- Задание 3 -----    
 Создал 3 одинаковых виртуальных диска размером 5 Гб с помощью ресурса yandex_compute_disk и мета-аргумента count в файле disk_vm.tf    
 ![image](https://github.com/user-attachments/assets/d17ae512-9481-4ad2-b6c5-cb40cc3c5c5b)

 Создал в том же файле одиночную ВМ "storage" . С помощью блока dynamic secondary_disk{..} подключил дополнительные диски
![image](https://github.com/user-attachments/assets/91d4bd4f-9bc0-46b7-b0df-d210bd514869)

 ----- Задание 4 -----     
 В файле ansible.tf создал inventory-файл с помощью функции tepmplatefile и файла-шаблона hosts.tftpl    
 ![image](https://github.com/user-attachments/assets/bcf300c0-19d2-4001-9919-f23d99c2c07d)

 hosts.tftpl     
 ![image](https://github.com/user-attachments/assets/93b0fb8d-0ed7-49c2-a895-e4bc77829aa3)   

 полученный inventory файл c добавленным FQDN   
 ![image](https://github.com/user-attachments/assets/46afce47-95a3-462e-aec3-5cc097029252)









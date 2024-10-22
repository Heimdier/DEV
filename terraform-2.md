--- Задание 1 ---

terraform не понимает знак домашнего каталога - нужно заменить на полный путь к файлу .json
![image](https://github.com/user-attachments/assets/30cc211d-2972-440d-adea-4f17445f9d0e)

должно быть standard
![image](https://github.com/user-attachments/assets/e0c73da3-7421-4c2b-bca5-4e28b35a4983)


ip address созданной ВМ с веб консоли яндекс
![image](https://github.com/user-attachments/assets/50f429d5-0ab6-413e-b162-1e55b788f33e)

ip address с терминала
![image](https://github.com/user-attachments/assets/d3b96653-f5ea-4302-8746-cdd9fe753653)

core_fraction - гарантированный процент производительности CPU от максимальной.    
preemptible true - виртуалка в любой момент может быть остановлена яндексом.   
Используя эти параметры можно значительно снизить стоимость аренды виртуалок и сэкономить деньги гранта от яндекса

---------- Задание 2 ---     
создал переменные в  variables.tf.  
![image](https://github.com/user-attachments/assets/9e57251b-724f-4a72-b9af-9ad3685742e5)

подменил хард кор значения переменными в main.tf.   
![image](https://github.com/user-attachments/assets/1462ee4a-a72b-4cce-a869-d3e7a66033c8)

terraform plan изменений не почувствовал.  
![image](https://github.com/user-attachments/assets/6dafcd5b-567f-4c7e-a694-0fe8f5d04b6d)





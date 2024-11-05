------------ Задание 1 ---

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

------------ Задание 2 ---     
создал переменные в  variables.tf.  
![image](https://github.com/user-attachments/assets/9e57251b-724f-4a72-b9af-9ad3685742e5)

подменил хард код значения переменными в main.tf.   
![image](https://github.com/user-attachments/assets/1462ee4a-a72b-4cce-a869-d3e7a66033c8)

terraform plan изменений не почувствовал.  
![image](https://github.com/user-attachments/assets/6dafcd5b-567f-4c7e-a694-0fe8f5d04b6d)

------------ Задание 3 ----------

создал файл vms_platform.tf с переменными для netology-develop-platform-db     
![image](https://github.com/user-attachments/assets/e98aa8e4-373d-4362-b803-aa5454006df7)
![image](https://github.com/user-attachments/assets/9a02e6b0-f4b4-4f1b-b96a-3edf33a61082)

объявил вторую ВМ в файле main.tf: "netology-develop-platform-db" 
![image](https://github.com/user-attachments/assets/2ee50c01-6346-4c47-addb-63ac9eeca1fb)
![image](https://github.com/user-attachments/assets/4c6d42df-bdbb-4dcb-adcb-dcd28fcb1d51)
применил - получил вторую ВМ в зоне "ru-central1-b"
![2024-10-23_07-26-19](https://github.com/user-attachments/assets/8f429eb7-9ba9-4e42-a1eb-aaade09e1cb8)

------------ Задание 4 ----------      
объявил в файле outputs.tf переменные instance_name, external_ip, fqdn для каждой из ВМ   
![image](https://github.com/user-attachments/assets/1574712f-f979-4308-8e84-d18578b0f468)
вывод для внешних ip адресов ВМ:     
![image](https://github.com/user-attachments/assets/f5ff6a43-e66a-408b-abd7-2dd45f7abd51)

------------ Задание 5 ----------    
создал локальные переменные с интерполяцией     
![image](https://github.com/user-attachments/assets/4d8a7856-05de-4a2c-98a8-1c6c298356a0)

подменил в main.tf на локальные переменные    
![image](https://github.com/user-attachments/assets/13233a16-c482-4d58-bbce-97a1506c8532)

применил с новыми именами       
![image](https://github.com/user-attachments/assets/9d78de6b-1f8b-4f48-8ab1-6b23d12778fc)

------------ Задание 6 ----------    
создал map переменную с вложенными map(object) для ".._cores",".._memory",".._core_fraction"   
![image](https://github.com/user-attachments/assets/58a9d553-516e-4083-a76a-dff98d9a095f)

подменил в main.tf на map переменные     
![image](https://github.com/user-attachments/assets/e6559fb9-3c9f-4533-a6e1-1f948dfdb4fa)
![image](https://github.com/user-attachments/assets/0d575020-0e99-4083-90a2-b151556d9ea9)

Создал map(object) переменную для блока metadata    
![image](https://github.com/user-attachments/assets/957dee95-c341-409a-88cd-b0ddb85ad4f0)

заменил в main.tf    
![image](https://github.com/user-attachments/assets/14823b75-5e17-4d0d-a8df-39086280d433)

terraform plan ошибок не обнаружил   























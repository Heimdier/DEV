
----- Задание 1 -----   
- запустил контейнеры   

![image](https://github.com/user-attachments/assets/ef4d6322-c113-4ceb-b751-a2cb6d2162a5)

- открыл веб морду, подключил дата сурс прометеус
  
![image](https://github.com/user-attachments/assets/d31b7746-e605-4263-8307-f89a63818fc3)


----- Задание 2 -----   

создал Dashboard и в ней Panels    

![image](https://github.com/user-attachments/assets/8e7bd9d6-f37f-4e29-a9f9-6f1f59eb3cad)   

Запросы:     
- утилизация CPU для nodeexporter (в процентах, 100-idle);      
- 100﻿ * ﻿(﻿1﻿ - ﻿avg﻿(﻿rate﻿(﻿node_cpu_seconds_total﻿{﻿instance﻿=﻿"nodeexporter:9100"﻿, ﻿job﻿=﻿"nodeexporter"﻿, ﻿mode﻿=﻿"idle"﻿}﻿[﻿1m﻿]﻿)﻿)﻿)
- CPULA 1/5/15;       
- node_load1, node_load5, node_load15
- количество свободной оперативной памяти;         
- node_memory_MemFree_bytes/1000000
- количество места на файловой системе.        
- (﻿node_filesystem_free_bytes﻿{﻿device﻿=﻿"/dev/sda2"﻿,﻿fstype﻿=﻿"ext4"﻿,﻿mountpoint﻿=﻿"/"﻿}﻿ ﻿)﻿/﻿1000000000

----- Задание 3 -----      
создал Alert для каждой панели мониторинга     
![image](https://github.com/user-attachments/assets/2c25a2e3-4c38-400f-9ed8-b1cf1b64060c)    

----- Задание 4 -----      











В каком terraform-файле, согласно этому .gitignore, допустимо сохранить личную, секретную информацию?(логины,пароли,ключи,токены итд)
Ответ - personal.auto.tfvars

Найдите в state-файле секретное содержимое - "result": "NM5z3KP8d6UN6A1s"

Раскомментируйте блок кода, примерно расположенный на строчках 29–42 файла main.tf. Выполните команду terraform validate. Объясните, в чём заключаются намеренно допущенные ошибки. Исправьте их.

блок resource должен содержать указание на тип и имя ресурса - в main.tf не задано имя ресурса в строке resource "docker_image" {
в строке resource "docker_container" "1nginx": имя указано с ошибкой, имя не может начинаться с цифры

![2024-10-18_07-40-48](https://github.com/user-attachments/assets/93d14d54-8242-4d3c-a12f-991c5286e168)
<img width="438" alt="2024-10-18_07-44-00" src="https://github.com/user-attachments/assets/245866fd-d3f7-449c-a2d2-a81edf1f5f1a">

после исправления ошибок validate завершается успешно
![2024-10-18_07-47-52](https://github.com/user-attachments/assets/7639b0e4-2e72-4a35-b47b-2ce865416860)
![2024-10-18_07-47-19](https://github.com/user-attachments/assets/1cc50ef2-eb69-44f7-9a26-e8cb3404dbdf)

docker ps после выполнения кода Terraform
![2024-10-19_12-49-51](https://github.com/user-attachments/assets/c1ceca0f-1b65-45d2-bd57-2881de4fd616)

поменял имя докер контейнера
![2024-10-19_12-57-40](https://github.com/user-attachments/assets/621af6af-1216-4e19-be7a-92950dc45e51)

-auto-approve выполняет команду terraform apply без ручного подтверждения админа, таким образом можно по ошибке поломать продакшн если в конфиге есть ошибочные действия

docker ps после изменения имени контейнера и -auto-approve
![image](https://github.com/user-attachments/assets/fe3c7506-f4f6-4cde-88df-524e46ba7e2b)

уничтожил ресурсы
![image](https://github.com/user-attachments/assets/9c15a350-9538-4a6a-b325-ee47147f3715)

содержимое terraform.tfstate
![image](https://github.com/user-attachments/assets/1585f036-ca0c-4da2-b8fb-8049b83bac41)

docker-образ nginx:latest не был удален т.к. в main.tf применен параметр keep_locally = true
![image](https://github.com/user-attachments/assets/70f8f046-3619-4552-ac52-8f62889ea821)



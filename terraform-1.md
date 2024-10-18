
В каком terraform-файле, согласно этому .gitignore, допустимо сохранить личную, секретную информацию?(логины,пароли,ключи,токены итд)
ответ - personal.auto.tfvars

Найдите в state-файле секретное содержимое
"result": "NM5z3KP8d6UN6A1s"

Раскомментируйте блок кода, примерно расположенный на строчках 29–42 файла main.tf. Выполните команду terraform validate. Объясните, в чём заключаются намеренно допущенные ошибки. Исправьте их.
блок resource должен содержать указание на тип и имя ресурса - в main.tf не задано имя ресурса в строке resource "docker_image" {
в строке resource "docker_container" "1nginx": имя указано с ошибкой, имя не может начинаться с цифры

![2024-10-18_07-40-48](https://github.com/user-attachments/assets/93d14d54-8242-4d3c-a12f-991c5286e168)
<img width="438" alt="2024-10-18_07-44-00" src="https://github.com/user-attachments/assets/245866fd-d3f7-449c-a2d2-a81edf1f5f1a">
![2024-10-18_07-47-52](https://github.com/user-attachments/assets/7639b0e4-2e72-4a35-b47b-2ce865416860)
![2024-10-18_07-47-19](https://github.com/user-attachments/assets/1cc50ef2-eb69-44f7-9a26-e8cb3404dbdf)






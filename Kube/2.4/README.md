### Задание 1. Создайте конфигурацию для подключения пользователя

1. Создайте и подпишите SSL-сертификат для подключения к кластеру.
2. Настройте конфигурационный файл kubectl для подключения.
3. Создайте роли и все необходимые настройки для пользователя.
4. Предусмотрите права пользователя. Пользователь может просматривать логи подов и их конфигурацию (`kubectl logs pod <pod_id>`, `kubectl describe pod <pod_id>`).
5. Предоставьте манифесты и скриншоты и/или вывод необходимых команд.


1. генерируем закрытый ключ RSA   
 `openssl genrsa -out kent.key 2048`   

2. создаем зашифрованный запрос на подпись сертификата на основе ключа (CN — имя пользователя, O — группа)   
 `openssl req -new -key kent.key -out kent.csr -subj "/CN=kent/O=opa"`   

3. забираем с кластера корневой сертификат CA.crt и приватный ключ CA.key отсюда:   
`/var/snap/microk8s/current/certs/`    

4. создаем самоподписанный сертификат на основе CA.crt, CA.key и запроса kent.csr   
` openssl x509 -req -in kent.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out kent.crt -days 365`   

![image](https://github.com/user-attachments/assets/a97fe2f2-6d61-462f-a0a9-32e55e4bbb46)





[deploy-nginx](https://github.com/Heimdier/DEV/blob/main/Kube/1.5./deploy-nginx.yml)

#### Создал Deployment приложения backend из образа multitool

```shell


  encode base 64:
  echo `dsfa;lksjals` | base64 --decode

```

### Задание 1. Создайте конфигурацию для подключения пользователя

1. генерируем закрытый ключ RSA   
 `openssl genrsa -out kent.key 2048`   

2. создаем зашифрованный запрос на подпись сертификата на основе ключа (CN — имя пользователя, O — группа)   
 `openssl req -new -key kent.key -out kent.csr -subj "/CN=kent/O=opa"`   

3. забираем с кластера корневой сертификат CA.crt и приватный ключ CA.key отсюда:   
`/var/snap/microk8s/current/certs/`    

4. создаем самоподписанный сертификат на основе CA.crt, CA.key и запроса kent.csr   
`openssl x509 -req -in kent.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out kent.crt -days 365`   

![image](https://github.com/user-attachments/assets/6e311382-16dd-40dd-a2ef-457716ec4c6a)

5. создаем пользователя kent в кубере с указанием сертификата и ключа:   
```shell
kubectl config set-credentials kent \
--client-certificate=kent.crt \
--client-key=kent.key
```

6. Задаем контекст для пользователя   
`kubectl config set-context kent-context --cluster=microk8s-cluster --user=kent`   

![image](https://github.com/user-attachments/assets/d2b7b278-7292-498c-828e-3b78c72b4955)

7. проверяем что в .kube/config появился новый юзер kent и контекст

![image](https://github.com/user-attachments/assets/26f4c353-89b3-432c-b3e2-3080fab2240c)

8. подключаем RBAC и создаем роль с биндинг   
`microk8s enable rbac`    
[role-bind](https://github.com/Heimdier/DEV/blob/main/Kube/2.4/role-bind.yml)     
[role-pods](https://github.com/Heimdier/DEV/blob/main/Kube/2.4/role-pods.yml)   

![image](https://github.com/user-attachments/assets/791fdd8b-407b-4ae4-a092-d62e2ec8a1de)

9. переключаюсь на созданный контекст и проверяю какие есть права    

![image](https://github.com/user-attachments/assets/35d99aa7-68f0-4683-a5a7-83d9191a92c5)

пользователь kent может смотреть поды и логи, но не сервисы или деплои к примеру

10. переключаюсь обратно на админский контекст - проверяю
    
![image](https://github.com/user-attachments/assets/e5381462-3527-4b24-86b3-def1ad57df9f)




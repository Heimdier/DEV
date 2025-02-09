
---- Задание 1 ----

создал манифест для Pod с именем hello-world    

apiVersion: v1
kind: Pod
metadata:
  name: hello-world
  labels:
    app: echo
spec:
  containers:
  - image: gcr.io/kubernetes-e2e-test-images/echoserver:2.2
    name: hello-world
    ports:
    - containerPort: 8001
   
запустил под   
![image](https://github.com/user-attachments/assets/1656d8c8-f07d-4224-9f49-ef5d3fa8ac5a)

сделал проброс порта для подключения к pod


Подключился к Pod

---- Задание 2 ----








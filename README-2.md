Задача 0
![2024-10-10_06-47-39](https://github.com/user-attachments/assets/f6fbd899-9e0c-44b1-85a5-4f7681ad16be)

Задача 1
- Fork
![2024-10-10_06-54-53](https://github.com/user-attachments/assets/22538955-8336-4356-afb4-2cf2fedd2855)

--- Dockerfile.python -------
FROM python:3.9-slim
EXPOSE 5000
WORKDIR /app
COPY requirements.txt /app
RUN pip install -r requirements.txt
COPY main.py /app
CMD python main.py
-----------------------------

Задача 2

------ compose.yaml ----------
x-deploy: &deploy-dev
  deploy:
    resources:
      limits:
        cpus: "1"
        memory: 512M
      reservations:
        memory: 256M
x-env_file: &env_file
  env_file:
    - .env
x-restart: &restart
  restart: always #no, on-failure , always(default), unless-stopped 
include:
  - proxy.yaml
services:
  db:
    image: mysql:8
    #"mysql_native_password" only for backend, usually don't need!
    # command: "--default-authentication-plugin=mysql_native_password" 
    # volumes:
    #  - db_data:/var/lib/mysql
    ports: ["3306:3306"]
    networks: 
      backend:
        ipv4_address: 172.20.0.10
    <<: [*deploy-dev, *env_file, *restart]
    environment:
      - MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD}
      - MYSQL_DATABASE=backend
      - MYSQL_USER=backend
      - MYSQL_PASSWORD=${MYSQL_PASSWORD}
      - MYSQL_ROOT_HOST="%" # it's very important!!!

  web:
    build:
      context: .
      dockerfile: dockerfile.python
    depends_on: ["db"]
#    ports: ["5000:5000"]
    networks: 
      backend:
        ipv4_address: 172.20.0.5
    <<: [*deploy-dev, *env_file, *restart]
    environment:
      - DB_HOST=172.20.0.10
      - DB_USER=backend
      - DB_PASSWORD=${MYSQL_PASSWORD}
      - DB_NAME=backend
----------------------------------

![2024-10-09_08-01-57](https://github.com/user-attachments/assets/0d7b7733-7793-4700-a781-6009fb4c63e7)






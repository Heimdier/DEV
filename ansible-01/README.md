
Запустил playbook site.yml на окружении test.yml, зафиксировал факты   
![image](https://github.com/user-attachments/assets/3c02454f-95ea-439b-866c-305e72f975e5)

поменял 12 на all default fact
![image](https://github.com/user-attachments/assets/ba588570-96ba-4d02-b368-f1bd546ff0d6)

в докере развернул контейнеры с ubuntu, centos и запустил на окружении prod.yml   
![image](https://github.com/user-attachments/assets/a763980c-c385-4377-85c5-dfd1c15a44ae)

5. Добавьте факты в `group_vars` каждой из групп хостов так, чтобы для `some_fact` получились значения: для `deb` — `deb default fact`, для `el` — `el default fact`.
![image](https://github.com/user-attachments/assets/a69d0808-a411-44c1-96f9-56706c4a3184)

7. При помощи `ansible-vault` зашифровал факты в `group_vars/deb` и `group_vars/el`
![image](https://github.com/user-attachments/assets/5345548d-868c-4372-b9a1-3480906b4ee3)

8. Запустил playbook на окружении `prod.yml` с запросом пароля от vault   
![image](https://github.com/user-attachments/assets/679a77be-cc73-453b-841f-3e3b5ba231a0)









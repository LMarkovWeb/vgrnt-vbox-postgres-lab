# Postgresql

## Запуск

Запуск через KVM
./start.sh -p libvirt

Запуск через virtualbox
./start.sh -p vbox

vagrant up

## Подключение базы данных к pgadmin:

```
sudo -u postgres psql postgres
alter user postgres with password 'postgres';
```

Сервер: localhost  
user: postgres  
pass: postgres

see: https://tecadmin.net/how-to-install-postgresql-in-ubuntu-20-04/

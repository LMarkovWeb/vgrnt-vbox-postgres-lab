#!/bin/bash

# see: https://tecadmin.net/how-to-install-postgresql-in-ubuntu-20-04/

echo "================================"
echo "=== Step 1. Update ============="
echo "================================"
sudo apt update 

echo "================================"
echo "=== Step 2. Install utils ======"
echo "================================"

apt install wget curl ca-certificates gnupg -y

echo "================================"
echo "=== Step 3. Install Postgres ==="
echo "================================"

wget -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add - 

sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ focal-pgdg main" >> /etc/apt/sources.list.d/pgdg.list' 

apt update 
apt-get install postgresql postgresql-contrib -y 

systemctl status postgresql 

echo "================================"
echo "=== Step 4. Install pgAdmin ==="
echo "================================"

curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add -
sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/focal pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list' 

apt update
apt install pgadmin4 -y
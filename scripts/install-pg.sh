#!/bin/bash

echo "================================"
echo "=== Step 3. Install Postgres ==="
echo "================================"

wget -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add - 

sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ focal-pgdg main" >> /etc/apt/sources.list.d/pgdg.list' 

apt update 
apt-get install postgresql-12 postgresql-client-12 postgresql-contrib-12 -y 

systemctl status postgresql 
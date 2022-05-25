#!/bin/bash

echo "================================"
echo "=== Step 4. Install pgAdmin ==="
echo "================================"

curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add -
sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/focal pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list' 

apt update
apt install pgadmin4 -y

# /usr/pgadmin4/bin/setup-web.sh<< 'EOF'
# sd@sd.ru
# qwe123
# qwe123
# y
# y
# EOF
# systemctl restart apache2
# echo "Open http://192.168.22.10/pgadmin4/"
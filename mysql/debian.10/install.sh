#!/bin/bash
clear
echo -e "==========\nWORKING\n=========="
apt-get update

# download
cd /tmp
wget http://repo.mysql.com/mysql-apt-config_0.8.13-1_all.deb
sudo dpkg -i mysql-apt-config_0.8.13-1_all.deb

# install
sudo apt update 
sudo apt install mysql-server

# secure
mysql_secure_installation

# chequear
mysql -u root -p

echo -e "==========\nREADY\n=========="

# reconfigurar
# dpkg-reconfigure mysql-apt-config

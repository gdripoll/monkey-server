#!/bin/bash
clear

echo DIRS ----------------------------------------
if [ ! -f /work ]; then
  mkdir /work
fi
chmod -R 777 /work

echo CLONE ----------------------------------------
git clone https://github.com/fatg3erman/RompR.git
cd RompR
mkdir prefs albumart
chown www-data pregs albumart

echo INSTALL --------------------------------------
apt update
apt install nginx php-curl php-sqlite3 php-gd php-json php-xml php-mbstring php-fpm imagemagick

echo CONFIG ---------------------------------------
rm /etc/nginx/sites-enabled/default
cp rompr /etc/nginx/sites-available/rompr
ln -s /etc/nginx/sites-available/rompr /etc/nginx/sites-enabled/rompr
echo "max_execution_time = 1800" >> /etc/php/7.0/fpm/php.ini

echo RESTART --------------------------------------
systemctl restart php7.0-fpm
systemctl restart nginx



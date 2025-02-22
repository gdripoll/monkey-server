#!/bin/bash
clear

echo "---------------------------------------"
echo "--update-------------------------------"
apt update
apt full-upgrade -y
echo "--nginx--------------------------------"
apt-get install nginx
systemctl start nginx
systemctl enable nginx
echo "--mariadb------------------------------"
apt-get install mariadb-server mariadb-client
systemctl start mariadb
systemctl enable mariadb
mysql_secure_installation
echo "--php----------------------------------"
apt-get install php-fpm php-mysql
echo "--config php---------------------------"
echo "poner  cgi.fix_pathinfo=0 en el archivo"
read
vim /etc/php/8.2/fpm/php.ini
systemctl restart php8.2-fpm

apt -y install certbot python3-certbot-nginx
certbot --nginx --agree-tos --redirect --hsts --staple-ocsp --email gdripoll@gmail.com -d centralservices.ddns.net



echo "--config nginx-------------------------"
cp sitios_config /etc/nginx/sites-available
ln -s /etc/nginx/sites-available/sitios_config /etc/nginx/sites-enabled/
nginx -t
systemctl restart nginx
echo "---------------------------------------"
echo "---------------------------------------"


#!/bin/bash
clear
echo -e "==========\nWORKING\n=========="
apt-get install -y  \
  nginx

mkdir -p /var/www/local/public
echo -e "<html>\n\t<h1>dev.local</h1>\n</html>" > /var/www/local/public/index.html
mkdir -p /var/www/sandbox
echo -e "<?php\nphpinfo();\n" > /var/www/sandbox/index.php


useradd -s /bin/false nginx
cp /etc/nginx/nginx.conf /etc/nginx/nginx.conf.ori
cp /home/user/build/config/nginx/nginx.conf /etc/nginx/nginx.conf
rm -fr /etc/nginx/conf.d/*
cp /home/user/build/config/nginx/conf.d/* /etc/nginx/conf.d/
cp -r /home/user/build/soft/inetpub /
chmod -R 777 /inetpub/

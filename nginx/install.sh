#!/bin/bash
clear
echo -e "==========\nWORKING\n=========="
apt-get update
apt-get install -y  \
  nginx

echo -e "==========\nSITES\n=========="
mkdir -p /var/www/local/public
echo -e "<html>\n\t<h1>dev.local</h1>\n</html>\n" > /var/www/local/public/index.html
mkdir -p /var/www/sandbox
echo -e "<?php\nphpinfo();\n" > /var/www/sandbox/index.php
mkdir -p /var/www/docs
echo -e "<html>\n\t<h1>doc.local</h1>\n\t<p>Nothing yet.</p>\n</html>\n" > /var/www/docs/index.html

echo -e "==========\nCONFIG\n=========="
# user for nginx
useradd -s /bin/false nginx
# configs
cp /etc/nginx/nginx.conf /etc/nginx/nginx.conf.ori
cp ./config/nginx.conf /etc/nginx/nginx.conf
rm -fr /etc/nginx/conf.d/*
cp ./config/conf.d/* /etc/nginx/conf.d/

echo -e "==========\nCAUTION\n=========="
# just
chmod -R 777 /var/www



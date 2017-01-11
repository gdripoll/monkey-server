#!/bin/bash
clear
echo -e "==========\nWORKING\n=========="
apt-get install -y  \
  nginx

useradd -s /bin/false nginx
cp /etc/nginx/nginx.conf /etc/nginx/nginx.conf.ori
cp ./config/nginx.conf /etc/nginx/nginx.conf
rm -fr /etc/nginx/conf.d/*
cp ./config/conf.d/* /etc/nginx/conf.d/
mkdir /inetpub
chmod -R 777 /inetpub/

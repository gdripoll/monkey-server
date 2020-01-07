#!/bin/bash
clear

apt udate
apt install apt-transport-https lsb-release ca-certificates
wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
sh -c 'echo "deb https://packages.sury.org/php/ stretch main" > /etc/apt/sources.list.d/php.list'
apt update

apt install -y \
    php7.4 php7.2-common \
    php7.4-fpm \
    php7.4-mysql \
    php7.4-xml \
    php7.4-curl \
    php7.4-gd \
    php7.4-json \
    php7.4-mbstring \
    php7.4-zip \
    php7.4-bcmath \
    php7.4-mysql \
    php-pear \
    php-dev

/etc/init.d/php7.2-fpm restart


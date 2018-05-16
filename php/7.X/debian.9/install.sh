#!/bin/bash
clear

apt udate
apt install apt-transport-https lsb-release ca-certificates
wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
sh -c 'echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list'
apt update

apt install -y \
    php7.2 php7.2-common php7.2-fpm \
    php7.2-mysql \
    php7.2-xml \
    php7.2-curl \
    php7.2-gd \
    php7.2-json \
    php7.2-mbstring \
    php7.2-zip \
    php7.2-bcmath \
    php7.2-mysql \
    php-pear \
    php-dev

/etc/init.d/php7.2-fpm restart


#!/bin/bash
clear

apt update

apt install -y \
    php7.3 php7.3-common php7.3-fpm \
    php7.3-mysql \
    php7.3-xml \
    php7.3-curl \
    php7.3-gd \
    php7.3-json \
    php7.3-mbstring \
    php7.3-zip \
    php7.3-bcmath \
    php-pear \
    php-dev

/etc/init.d/php7.3-fpm restart


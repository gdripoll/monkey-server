#!/bin/bash

clear
echo -e "==========\nWORKING\n=========="
apt-get update
apt-get -y install	\
	php-fpm 					\
	php7.0-curl 			\
	php7.0-cli 				\
	php7.0-gd 				\
	php7.0-json 			\
	php7.0-mcrypt 		\
	php7.0-dev 				\
	php-mysql 				\
	php7.0-zip 

ln -sf /etc/php5/mods-available/mcrypt.ini /etc/php5/fpm/conf.d/20-mcrypt.ini
ln -sf /etc/php5/mods-available/gd.ini /etc/php5/fpm/conf.d/20-gd.ini

echo -e "==========\nREADY\n=========="


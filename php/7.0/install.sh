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
  php-pear          \
	php-mysql 				\
  php-bcmath        \
  php-mbstring      \
	php7.0-zip 


echo -e "==========\nCONFIG\n=========="
cp ./config/php.ini         /etc/php/7.0/fpm/php.ini
cp ./config/php-fpm.conf    /etc/php/7.0/fpm/php-fpm.conf
cp ./config/pool.d/www.conf /etc/php/7.0/fpm/pool.d/www.conf
cp ./config/conf.d/*        /etc/php/7.0/mods-available/


echo -e "==========\nLINKS\n=========="
ln -sf /etc/php/7.0/mods-available/mcrypt.ini /etc/php/7.0/fpm/conf.d/20-mcrypt.ini
ln -sf /etc/php/7.0/mods-available/gd.ini     /etc/php/7.0/fpm/conf.d/20-gd.ini


echo -e "==========\nJUMPSTART\n=========="
/etc/init.d/php7.0-fpm restart


echo -e "==========\nREADY\n=========="


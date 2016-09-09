#!/bin/bash

clear
echo -e "==========\nWORKING\n=========="
apt-get update
apt-get -y install	\
	php5-fpm 					\
	php5-curl  			  \
	php5-cli 				  \
	php5-gd 				  \
	php5-json 			  \
	php5-mcrypt 		  \
	php5-dev 				  \
	php5-mysql 			  \
  php5-xdebug

echo -e "==========\nLINKS\n=========="
ln -sf /etc/php5/mods-available/mcrypt.ini /etc/php5/fpm/conf.d/20-mcrypt.ini
ln -sf /etc/php5/mods-available/gd.ini /etc/php5/fpm/conf.d/20-gd.ini

echo -e "==========\nCONFIG\n=========="
cp ./config/php.ini /etc/php5/fpm/php.ini
cp ./config/php-fpm.conf /etc/php5/fpm/php-fpm.conf
cp ./config/pool.d/www.conf /etc/php5/fpm/pool.d/www.conf
cp ./config/conf.d/* /etc/php5/mods-available/

echo -e "==========\nJUMPSTART\n=========="
/etc/init.d/php5-fpm restart

echo -e "==========\nREADY\n=========="


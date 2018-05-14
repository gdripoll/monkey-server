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


echo -e "==========\nJUMPSTART\n=========="
/etc/init.d/php7.0-fpm restart


echo -e "==========\nREADY\n=========="


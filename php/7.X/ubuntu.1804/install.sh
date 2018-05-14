#!/bin/bash

clear
echo -e "==========\nWORKING\n=========="
apt-get update
apt-get -y install	\
	php-fpm 					\
	php7.2-curl 			\
	php7.2-cli 				\
	php7.2-gd 				\
	php7.2-json 			\
  libmcrypt-dev     \
	php7.2-dev 				\
  php-pear          \
	php-mysql 				\
  php-bcmath        \
  php-mbstring      \
	php7.2-zip				\
	php7.2-dev 


pecl install mcrypt-1.0.1

echo -e "==========\nJUMPSTART\n=========="

/etc/init.d/php7.0-fpm restart


echo -e "==========\nREADY\n=========="


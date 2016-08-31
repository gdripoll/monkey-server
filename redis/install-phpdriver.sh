#!/bin/bash
clear
echo -e "==========\nWORKING\n=========="
apt-get update
cd /tmp
git clone https://github.com/phpredis/phpredis.git
cd phpredis
git checkout php7
phpize
./configure
make && make install
cd ..
rm -rf phpredis

  

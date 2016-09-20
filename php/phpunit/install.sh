#!/bin/bash

clear
echo -e "==========\nWORKING\n=========="
cd /opt
mkdir phpunit
chmod -R 777 phpunit
cd phpunit
wget https://phar.phpunit.de/phpunit.phar
chmod uog+x phpunit.phar
ln -s /opt/phpunit/phpunit.phar /usr/bin/phpunit
cd /
phpunit --version

echo -e "==========\nREADY\n=========="


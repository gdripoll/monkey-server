#!/bin/bash

clear
echo -e "==========\nWORKING\n=========="
cd /opt
mkdir phpunit
chmod -R 777 phpunit
cd phpunit
wget -O phpunit.v7.phar https://phar.phpunit.de/phpunit-7.phar
chmod uog+x phpunit
ln -s /opt/phpunit/phpunit.v7.phar /usr/bin/phpunit
cd /
phpunit --version

echo -e "==========\nREADY\n=========="


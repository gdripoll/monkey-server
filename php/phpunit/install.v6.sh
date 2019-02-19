#!/bin/bash

clear
echo -e "==========\nWORKING\n=========="
cd /opt
mkdir phpunit
chmod -R 777 phpunit
cd phpunit
wget -O phpunit.v6.phar https://phar.phpunit.de/phpunit-6.phar
chmod uog+x phpunit
rm -rf /usr/bin/phpunit
ln -s /opt/phpunit/phpunit.v6.phar /usr/bin/phpunit
cd /
phpunit --version

echo -e "==========\nREADY\n=========="


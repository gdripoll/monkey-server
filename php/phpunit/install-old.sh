#!/bin/bash

clear
echo -e "==========\nWORKING\n=========="
cd /opt
mkdir phpunit
chmod -R 777 phpunit
cd phpunit
wget https://phar.phpunit.de/phpunit-old.phar
chmod +x phpunit-old.phar
ln -s /opt/phpunit/phpunit-old.phar /usr/bin/phpunit-old
cd /
phpunit-old --version

echo -e "==========\nREADY\n=========="


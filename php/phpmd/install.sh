#!/bin/bash
clear
echo -e "==========\nWORKING\n=========="

mkdir /opt/phpmd &&\
cd /opt/phpmd &&\
wget -c http://static.phpmd.org/php/latest/phpmd.phar &&\
chmod uog+x phpmd.phar &&\
ln -s /opt/phpmd/phpmd.phar /usr/local/bin/phpmd

echo -e "==========\nREADY\n=========="


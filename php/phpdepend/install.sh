#!/bin/bash
clear
echo -e "==========\nWORKING\n=========="

apt update &&\
apt install php-bz2 &&\
mkdir /opt/phpdepend &&\
cd /opt/phpdepend &&\
wget https://static.pdepend.org/php/latest/pdepend.phar &&\
chmod uog+x pdepend.phar &&\
ln -s /opt/phpdepend/pdepend.phar /usr/local/bin/pdepend

echo -e "==========\nREADY\n=========="


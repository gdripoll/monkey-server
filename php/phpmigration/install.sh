#!/bin/bash
clear
echo -e "==========\nWORKING\n=========="

mkdir /opt/phpmigration &&\
cd /opt/phpmigration &&\
wget https://github.com/monque/PHP-Migration/releases/download/v0.2.2/phpmig.phar
chmod uog+x phpmig.phar &&\
ln -s /opt/phpmigration/phpmig.phar /usr/local/bin/phpmig

echo -e "==========\nREADY\n=========="


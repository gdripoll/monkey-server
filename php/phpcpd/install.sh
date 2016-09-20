#!/bin/bash
clear
echo -e "==========\nWORKING\n=========="

mkdir /opt/phpcpd &&\
cd /opt/phpcpd &&\
wget https://phar.phpunit.de/phpcpd.phar &&\
chmod uog+x phpcpd.phar &&\
ln -s /opt/phpcpd/phpcpd.phar /usr/local/bin/phpcpd

echo -e "==========\nREADY\n=========="


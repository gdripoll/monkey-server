#!/bin/bash
clear
echo -e "==========\nWORKING\n=========="

mkdir /opt/phploc &&\
cd /opt/phploc &&\
wget https://phar.phpunit.de/phploc.phar &&\
chmod uog+x phploc.phar &&\
ln -s /opt/phploc/phploc.phar /usr/local/bin/phploc

echo -e "==========\nREADY\n=========="


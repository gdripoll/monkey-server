#!/bin/bash
clear
echo -e "==========\nWORKING\n=========="

mkdir /opt/phpcs &&\
cd /opt/phpcs &&\
wget https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar &&\
wget https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar &&\
chmod uog+x phpcs.phar phpcbf.phar &&\
ln -s /opt/phpcs/phpcs.phar /usr/local/bin/phpcs
ls -s /opt/phpcs/phpcbf.phar /usr/local/bin/phpcbf

echo -e "==========\nREADY\n=========="


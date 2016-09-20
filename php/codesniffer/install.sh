#!/bin/bash
clear
echo -e "==========\nWORKING\n=========="

mkdir /tmp/sniffer &&\
cd /tmp/sniffer &&\
curl -OL https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar &&\
php phpcs.phar -h &&\
curl -OL https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar &&\
php phpcbf.phar -h &&\
pear install PHP_CodeSniffer &&\
cd /tmp &&\
rm -rf /tmp/sniffer

echo -e "==========\nREADY\n=========="


#!/bin/bash
clear
echo -e "==========\nWORKING\n=========="
apt update
apt -y install libaio1 libaio-dev

ln -s /usr/lib/php/20170718/oci8.so /usr/lib/php/20170718/oci8.so.so
cp /opt/oracle/instantclient/* /usr/lib/x86_64-linux-gnu 

pecl channel-update pecl.php.net
pecl install oci8

echo -e "==========\nREADY\n=========="


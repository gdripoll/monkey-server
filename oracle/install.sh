#!/bin/bash
clear
echo -e "==========\nWORKING\n=========="

cp ./soft/* /tmp && \
cd /tmp && \
unzip instantclient-basic-linux.x64-12.1.0.2.0.zip && \
unzip instantclient-sdk-linux.x64-12.1.0.2.0.zip && \
mkdir -p /opt/oracle/ && \
mv instantclient_12_1 /opt/oracle/instantclient && \
ln -sf /opt/oracle/instantclient/libclntsh.so.12.1 /opt/oracle/instantclient/libclntsh.so && \
wget -q https://pecl.php.net/get/oci8-2.0.10.tgz && \
tar -xzvf oci8-2.0.10.tgz && \
cd oci8-2.0.10 && \
phpize && \
./configure --with-oci8=shared,instantclient,/opt/oracle/instantclient && \
make && \
make install && \
rm -rf /tmp/*

echo -e "==========\nREADY\n=========="


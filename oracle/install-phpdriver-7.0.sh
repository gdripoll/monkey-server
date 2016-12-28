#!/bin/bash
clear
echo -e "==========\nWORKING\n=========="
apt update
apt -y install libaio1 libaio-dev

mkdir /tmp/oracle &&\
cp ./soft/* /tmp/oracle && \
cd /tmp/oracle && \
unzip instantclient-basic-linux.x64-12.1.0.2.0.zip && \
unzip instantclient-sdk-linux.x64-12.1.0.2.0.zip && \
mkdir -p /opt/oracle/ && \
mv instantclient_12_1 /opt/oracle/instantclient && \
ln -sf /opt/oracle/instantclient/libclntsh.so.12.1 /opt/oracle/instantclient/libclntsh.so && \

#pecl install oci8-1.4.10
pecl install oci8

echo -e "==========\nREADY\n=========="


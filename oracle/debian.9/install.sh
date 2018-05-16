#!/bin/bash
clear
echo -e "==========\nWORKING\n=========="
apt update
apt -y install libaio1 libaio-dev

mkdir /tmp/oracle &&\
cp ../soft/* /tmp/oracle && \
cd /tmp/oracle && \
unzip instantclient-basic-linux.x64-12.2.0.1.0.zip && \
unzip instantclient-sdk-linux.x64-12.2.0.1.0.zip && \
mkdir -p /opt/oracle/ && \
mv instantclient_12_2 /opt/oracle && \
mv /opt/oracle/instantclient_12_2 /opt/oracle/instantclient
ln -sf /opt/oracle/instantclient/libclntsh.so.12.2 /opt/oracle/instantclient/libclntsh.so 


echo -e "==========\nREADY\n=========="


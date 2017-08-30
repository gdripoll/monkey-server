#!/bin/bash

clear

apt update
apt install -y build-essential unzip python-dev libaio-dev libaio1 python3-pip


mkdir /tmp/oracle &&\
cp ./soft/* /tmp/oracle && \
cd /tmp/oracle && \
unzip instantclient-basic-linux.x64-12.1.0.2.0.zip && \
unzip instantclient-sdk-linux.x64-12.1.0.2.0.zip && \
mkdir -p /opt/oracle/ && \
mv instantclient_12_1 /opt/oracle/instantclient && \
ln -sf /opt/oracle/instantclient/libclntsh.so.12.1 /opt/oracle/instantclient/libclntsh.so

echo '/opt/oracle/instantclient' > /etc/ld.so.conf.d/oracle.conf
ldconfig

pip install cx_oracle


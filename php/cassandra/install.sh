#!/bin/bash
clear
echo -e "==========\nWORKING\n=========="

apt update
apt install -y php-pear php-dev libgmp-dev g++ git make cmake clang libssl-dev libgmp-dev openssl libpcre3-dev libc6

mkdir /tmp/cassandra && \
cp config/* /tmp/cassandra && \
cd /tmp/cassandra

wget http://downloads.datastax.com/cpp-driver/ubuntu/14.04/dependencies/libuv/v1.7.5/libuv_1.7.5-1_amd64.deb
wget http://downloads.datastax.com/cpp-driver/ubuntu/14.04/dependencies/libuv/v1.7.5/libuv-dev_1.7.5-1_amd64.deb
wget http://downloads.datastax.com/cpp-driver/ubuntu/14.04/cassandra/v2.4.2/cassandra-cpp-driver_2.4.2-1_amd64.deb
wget http://downloads.datastax.com/cpp-driver/ubuntu/14.04/cassandra/v2.4.2/cassandra-cpp-driver-dev_2.4.2-1_amd64.deb

dpkg -i libuv_1.7.5-1_amd64.deb
dpkg -i libuv-dev_1.7.5-1_amd64.deb
dpkg -i cassandra-cpp-driver_2.4.2-1_amd64.deb
dpkg -i cassandra-cpp-driver-dev_2.4.2-1_amd64.deb
pecl install cassandra

#cd /tmp
#rm -rf /tmp/cassandra


echo -e "==========\nREADY\n=========="

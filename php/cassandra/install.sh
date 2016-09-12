#!/bin/bash
clear
echo -e "==========\nWORKING\n=========="

mkdir /tmp/cassandra && \
cp config/* /tmp/cassandra && \
cd /tmp/cassandra && \
dpkg -i libuv_1.8.0-1_amd64.deb && \
dpkg -i libuv-dev_1.8.0-1_amd64.deb && \
dpkg -i cassandra-cpp-driver_2.4.2-1_amd64.deb && \
dpkg -i cassandra-cpp-driver-dev_2.4.2-1_amd64.deb && \
pecl install cassandra && \
rm -rf /tmp/cassandra

echo -e "==========\nREADY\n=========="

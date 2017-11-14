#!/bin/bash
clear
echo -e "==========\nWORKING\n=========="

cd /opt/
wget http://apache.dattatec.com/kafka/1.0.0/kafka_2.11-1.0.0.tgz
tar -zxf kafka_2.11-1.0.0.tgz
cd kafka_2.11-1.0.0.tgz
cp /root/monkey-server/kafka/scripts/* .

echo -e "==========\nREADY\n=========="


#!/bin/bash
clear
cd /opt/kafka_2.11-1.0.0
echo zookeeper...
bin/zookeeper-server-start.sh config/zookeeper.properties &
echo kafka...
bin/kafka-server-start.sh config/server.properties & 


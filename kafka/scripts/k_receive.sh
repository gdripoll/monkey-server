#!/bin/bash
clear
echo $1 RECEIVE -----
bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic $1


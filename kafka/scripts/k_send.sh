#!/bin/bash
clear
echo $1 SEND -----
bin/kafka-console-producer.sh --broker-list localhost:9092 --topic $1


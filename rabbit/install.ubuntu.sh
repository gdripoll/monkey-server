#!/bin/bash

clear

echo -- adding source
echo 'deb http://www.rabbitmq.com/debian/ testing main' | sudo tee /etc/apt/sources.list.d/rabbitmq.list

echo -- download signature
wget -O- https://www.rabbitmq.com/rabbitmq-release-signing-key.asc | sudo apt-key add -

echo -- update
apt update

echo -- install
apt install -y rabbitmq-server

echo --- enable plugin
rabbitmq-plugins enable rabbitmq_management



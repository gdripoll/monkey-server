#!/bin/bash
clear
echo -e "==========\nWORKING\n=========="


apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4
echo "deb http://repo.mongodb.org/apt/debian stretch/mongodb-org/4.0 main" | sudo tee /etc/apt/sources.list.d/mongodb.list
apt update
apt install -y mongodb-org --force-yes
systemctl start mongod.service
systemctl enable mongod.service
mongod --version

echo -e "==========\nREADY\n=========="


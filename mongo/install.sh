#!/bin/bash
clear
echo -e "==========\nWORKING\n=========="
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
#echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/3.6 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.6.list
apt-get update
apt-get install -y mongodb-org

echo -e "==========\nINIT\n=========="
cp ./config/mongod /etc/init.d/mongod
update-rc.d mongod defaults

echo -e "==========\nREADY\n=========="


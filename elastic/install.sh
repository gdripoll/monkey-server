#!/bin/bash
clear
echo -e "==========\nWORKING\n=========="

wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -

echo -e "==========\nTRANSPORT\n=========="
apt-get update
apt-get install apt-transport-https
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list

echo -e "==========\nELASTIC\n=========="
apt-get update
apt-get -y install	\
	elasticsearch

echo -e "==========\nREADY\n=========="


#!/bin/bash

clear
echo -e "==========\nWORKING\n=========="
add-apt-repository ppa:linuxuprising/java
apt update
apt install oracle-java12-installer
apt install oracle-java12-set-default

echo -e "==========\nJUMPSTART\n=========="
java -version

echo -e "==========\nREADY\n=========="


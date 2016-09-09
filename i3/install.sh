#!/bin/bash

clear
echo -e "==========\nWORKING\n=========="

echo "deb http://debian.sur5r.net/i3/ $(lsb_release -c -s) universe" >> /etc/apt/sources.list.d/i3.list
apt-get update
apt-get --allow-unauthenticated install sur5r-keyring
apt-get update
apt install -y i3 

echo -e "==========\nCONFIG\n=========="
mkdir /home/$USERNAME/.i3
cp config/config /home/$USERNAME/.i3/config
chown $USERNAME:$USERNAME /home/$USERNAME/.i3

echo -e "==========\nREADY\n=========="


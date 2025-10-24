#!/bin/bash
clear

echo "---------------------------------------"
echo "--update-------------------------------"
apt update
apt full-upgrade -y
echo "--samba--------------------------------"
apt-get install samba samba-client




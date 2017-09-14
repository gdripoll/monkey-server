#!/bin/bash
clear
echo -e "==========\nWORKING\n=========="
apt update
cd /tmp
wget http://prdownloads.sourceforge.net/webadmin/webmin_1.850_all.deb
dpkg -i webmin_1.850_all.deb
apt-get install -f
apt-get clean
echo -e "==========\nREADY\n=========="

#!/bin/bash
clear
echo -e "==========\nWORKING\n=========="
apt update
apt -y full-upgrade
apt-get autoremove
apt-get clean
echo -e "==========\nREADY\n=========="

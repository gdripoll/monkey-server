#!/bin/bash
clear
echo -e "==========\nWORKING\n=========="
apt update
apt full-upgrade -y
apt-get autoremove
apt-get clean
echo -e "==========\nREADY\n=========="
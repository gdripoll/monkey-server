#!/bin/bash
clear
echo -e "==========\nWORKING\n=========="
apt-get update
apt-get full-upgrade -y
apt-get autoremove
apt-get clean
echo -e "==========\nREADY\n=========="

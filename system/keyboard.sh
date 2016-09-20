#!/bin/bash
clear
echo -e "==========\nWORKING\n=========="

mkdir /root/bakups
cp /etc/default/keyboard /root/etc-default-keyboard
cp ./config/keyboard /etc/default

echo -e "==========\nREADY\n=========="

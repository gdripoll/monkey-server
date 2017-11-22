#!/bin/bash
clear
echo -e "==========\nWORKING\n=========="
apt update
apt install pkg-config
pecl install mongodb

echo -e "==========\nREADY\n=========="


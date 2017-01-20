#!/bin/bash

clear
echo -e "==========\nWORKING\n=========="
cd /tmp
curl -s https://packagecloud.io/install/repositories/phalcon/stable/script.deb.sh | bash
apt-get update
apt-get -y install php7.0-phalcon

echo -e "==========\nREADY\n=========="


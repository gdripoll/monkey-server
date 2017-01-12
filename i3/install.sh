#!/bin/bash

clear
echo -e "==========\nWORKING\n=========="

if [ $# -eq 0 ]; then
        echo "Falta parámetro nombre del usuario."
        exit;
fi

apt-get update
apt install -y i3 i3status nitrogen dmenu conky compton

echo -e "==========\nCONFIG\n=========="
mkdir /home/$1/.i3
cp config/config /home/$1/.i3/config
chown -R $1:$1 /home/$1/.i3

echo -e "==========\nREADY\n=========="


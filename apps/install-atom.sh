#!/bin/bash
clear
echo -e "==========\nWORKING\n=========="

cp ./config/atom-packages.sh /home/$USERNAME/atom-packages.sh
chown $USERNAME:$USERNAME /home/$USERNAME/atom-packages.sh
chmod +x /home/$USERNAME/atom-packages.sh

mkdir /tmp/atom; cd /tmp/atom
wget https://atom.io/download/deb
dpkg -i deb
cd /tmp
rm -rf /tmp/atom

echo -e "==========\nLISTO\n=========="




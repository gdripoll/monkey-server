#!/bin/bash
clear

# parametro
if [ $# -eq 0 ]; then
	echo "Falta parámetro nombre del usuario."
	exit;
fi

# update
apt-get update

echo -e "==========\nWORKING\n=========="
# basics
apt-get -y install curl wget unzip htop nmon vim mc cifs-utils net-tools
# clean
apt-get autoremove
apt-get clean

echo -e "==========\nSETTING $1 \n=========="

echo "alias ll='ls -al'" >> /home/$1/.bashrc
echo "set tabstop=2" > /home/$1/.vimrc
echo "set nu" >> /home/$1/.vimrc
echo "syntax on" >> /home/$1/.vimrc
echo "set nowrap" >> /home/$1/.vimrc
chown $1:$1 /home/$1/.vimrc


echo -e "==========\nSETTING root \n=========="

echo "alias ll='ls -al'" >> /root/.bashrc
echo "PATH=$PATH:/usr/sbin/" >> /root/.bashrc
echo "set tabstop=2" > /root/.vimrc
echo "set nu" >> /root/.vimrc
echo "syntax on" >> /root/.vimrc
echo "set nowrap" >> /root/.vimrc

echo -e "==========\nREADY\n=========="
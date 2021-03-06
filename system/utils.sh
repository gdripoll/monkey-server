#!/bin/bash
clear

if [ $# -eq 0 ]; then
	echo "Falta parámetro nombre del usuario."
	exit;
fi

echo -e "==========\nWORKING\n=========="
apt-get update
apt-get -y install  \
  curl wget         \
  unzip             \
  htop nmon         \
  mc vim            \
  build-essential   \
  software-properties-common \
  cifs-utils        \
	net-tools         \
  openssh-server
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
echo "set tabstop=2" > /root/.vimrc
echo "set nu" >> /root/.vimrc
echo "syntax on" >> /root/.vimrc
echo "set nowrap" >> /root/.vimrc

echo -e "==========\nREADY\n=========="

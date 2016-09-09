#!/bin/bash
clear
echo -e "==========\nWORKING\n=========="
apt-get update
apt-get -y install  \
  curl wget         \
  unzip             \
  htop nmon         \
  mc vim
apt-get autoremove
apt-get clean

echo -e "==========\nSETTING\n=========="
su $USERNAME
echo "alias ll='ls -al'" >> ~/.bashrc
echo "set tabstop=2" > ~/.vimrc
echo "set nu" >> ~/.vimrc
echo "syntax on" >> ~/.vimrc
exit

echo "alias ll='ls -al'" >> ~/.bashrc
echo "set tabstop=2" > ~/.vimrc
echo "set nu" >> ~/.vimrc
echo "syntax on" >> ~/.vimrc

echo -e "==========\nREADY\n=========="

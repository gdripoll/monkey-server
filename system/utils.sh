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
echo "alias ll='ls -al'" >> ~/.bashrc
echo "alias ll='ls -al'" >> /root/.bashrc
# vim (.vimrc)
echo "set tabstop=2" > ~/.vimrc
echo "set nu" >> ~/.vimrc
echo "syntax on" >> ~/.vimrc
cp ~/.vimrc /root/.vimrc
chown $USERNAME:$USERNAME ~/.vimrc

echo -e "==========\nREADY\n=========="

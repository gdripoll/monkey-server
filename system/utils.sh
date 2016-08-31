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
echo "alias ll='ls -al'" >> /home/user/.bashrc
echo "alias ll='ls -al'" >> /root/.bashrc
# vim (.vimrc)
echo "set tabstop=2" > /home/user/.vimrc
echo "set nu" >> /home/user/.vimrc
echo "syntax on" >> /home/user/.vimrc
cp /home/user/.vimrc /root/.vimrc
chown user:user /home/user/.vimrc

echo -e "==========\nREADY\n=========="

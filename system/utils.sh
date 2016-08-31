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
echo "alias ll='ls -al'" >> /home/$USERNAME/.bashrc
echo "alias ll='ls -al'" >> /root/.bashrc
# vim (.vimrc)
echo "set tabstop=2" > /home/$USERNAME/.vimrc
echo "set nu" >> /home/$USERNAME/.vimrc
echo "syntax on" >> /home/$USERNAME/.vimrc
cp /home/$USERNAME/.vimrc /root/.vimrc
chown $USERNAME:$USERNAME /home/$USERNAME/.vimrc

echo -e "==========\nREADY\n=========="

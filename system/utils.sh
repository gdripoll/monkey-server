#!/bin/bash
clear
echo -e "==========\nWORKING\n=========="
apt-get update
apt-get -y install  \
  curl wget         \
  unzip             \
  htop nmon         \
  mc vim            \
  ant
apt-get autoremove
apt-get clean

echo -e "==========\nSETTING $USERNAME \n=========="

echo "alias ll='ls -al'" >> /home/$USERNAME/.bashrc
echo "set tabstop=2" > /home/$USERNAME/.vimrc
echo "set nu" >> /home/$USERNAME/.vimrc
echo "syntax on" >> /home/$USERNAME/.vimrc
echo "set nowrap" >> /home/$USERNAME/.vimrc

echo -e "==========\nSETTING root \n=========="

echo "alias ll='ls -al'" >> /root/.bashrc
echo "set tabstop=2" > /root/.vimrc
echo "set nu" >> /root/.vimrc
echo "syntax on" >> /root/.vimrc
echo "set nowrap" >> /root/.vimrc

echo -e "==========\nREADY\n=========="

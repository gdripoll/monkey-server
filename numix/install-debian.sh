#!/bin/bash
clear

apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0F164EEB

# nano /etc/apt/sources.list.d/numix.list
echo "deb http://ppa.launchpad.net/numix/ppa/ubuntu trusty main"      > /etc/apt/sources.list.d/numix.list
echo "deb-src http://ppa.launchpad.net/numix/ppa/ubuntu trusty main" >> /etc/apt/sources.list.d/numix.list

apt-get update
apt-get install gtk2-engines-murrine
apt-get install numix-gtk-theme numix-icon-theme numix-icon-theme-circle numix-icon-theme-bevel



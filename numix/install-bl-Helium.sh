#!/bin/bash
clear

add-apt-repository ppa:numix/ppa
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 52B709720F164EEB 
apt update
apt install numix-gtk-theme numix-icon-theme numix-icon-theme-circle

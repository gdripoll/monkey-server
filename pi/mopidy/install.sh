#!/bin/bash
clear

echo GETS ----------------------------------------
wget -q -O - https://apt.mopidy.com/mopidy.gpg | sudo apt-key add -
wget -q -O /etc/apt/sources.list.d/mopidy.list https://apt.mopidy.com/stretch.list

echo UPDATE --------------------------------------
apt update
apt install mopidy

echo DIRS ----------------------------------------
if [ ! -f /work ]; then
   mkdir /work
fi
if [ ! -f /work/mp3 ]; then
   mkdir /work/mp3
fi

#/etc/mopidy/mopidy.conf

#!/bin/bash
clear

echo GETS ----------------------------------------
# wget -q -O - https://apt.mopidy.com/mopidy.gpg | sudo apt-key add -
# wget -q -O /etc/apt/sources.list.d/mopidy.list https://apt.mopidy.com/stretch.list

echo UPDATE --------------------------------------
# apt update
# apt install mopidy

echo DIRS ----------------------------------------
# if [ ! -f /work ]; then
#   mkdir /work
# fi
chmod -R 777 /work
# if [ ! -f /work/mp3 ]; then
#    mkdir /work/mp3
# fi
chmod -R 777 /work/mp3
cp Julia.mp3 /work/mp3

#/etc/mopidy/mopidy.conf
if [ -f /etc/mopidy/mopidy.conf ]; then
	mv /etc/mopidy/mopidy.conf /etc/mopidy/mopidy.conf.ori
fi
cp mopidy.conf /etc/mopidy/mopidy.conf

echo CONFIG --------------------------------------
mpidyctl config
mopidyctl local scan
systemctl enable mopidy
systemctl start mopidy
systemctl status mopidy
dpkg-reconfigure mopidy
service mopidy start
service mopidy status

echo CONFIG --------------------------------------

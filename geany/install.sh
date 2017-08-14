#!/bin/bash

clear
if [ $# -eq 0 ]; then
	echo "Falta parámetro nombre del usuario."
	exit;
fi

mkdir /home/$1/.config/geany
cp -R ./colorschemes /home/$1/.config/geany
chown -R $1:$1 /home/$1/.config/geany/colorschemes

mkdir /root/.config/geany
cp -R ./colorschemes /root/.config/geany




#!/bin/bash

apt-get update
apt-get dist-upgrade

apt-get install \
	build-essential \
	git intltool libtool \
	gobject-introspection \
	libglib2.0-dev \
	libgtk-3-dev \
	libpulse-dev \
	libmutter-dev

apt-get install \
	libwnck-3-dev libupower-glib-dev \
	libgnome-menu-3-dev libpeas-dev \
	uuid-dev valac \
	libgnome-desktop-3-dev

apt-get install gnome-session --no-install-recommends

git clone https://github.com/solus-project/budgie-desktop.git
cd budgie-desktop

./autogen.sh --prefix=/usr;
make
make install



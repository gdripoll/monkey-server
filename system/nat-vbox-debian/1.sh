#!/bin/bash

apt-get install dkms build-essential linux-headers-amd64

mount /dev/sr0 /media/cdrom
cd /media/cdrom

./VBoxLinuxAdditions.run


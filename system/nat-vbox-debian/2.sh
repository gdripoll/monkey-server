#!/bin/bash

echo "vboxsf" >> /etc/initramfs-tools/modules
update-initramfs -u

mkdir /work
chdmo 777 /work
echo -e "work\t\t/work\t\tvboxsf\t\tdefaults\t\t0\t\t1\n" >> /etc/fstab
shutdown -r now

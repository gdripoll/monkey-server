# Instalacion VBox Nat Samba 80


## Instalar VBoxTools

```bash
apt-get install dkms build-essential linux-headers-amd64
mount /dev/sr0 /media/cdrom
cd /media/cdrom
./VBoxLinuxAdditions.run
```


## Fix para carpetas compartidas

```bash
echo "vboxsf" >> /etc/initramfs-tools/modules
update-initramfs -u
```


## Montaje automático

```bash
mkdir /work
chdmo 777 /work
echo -e "work\t\t/work\t\tvboxsf\t\tdefaults\t\t0\t\t1\n" >> /etc/fstab
shutdown -r now
```


## Reboot

```bash
shutdown -r now
```


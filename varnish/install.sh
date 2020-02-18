#!/bin/bash
echo ------------------------------------------
echo installing...
echo ------------------------------------------


wget https://packagecloud.io/varnishcache/varnish5/gpgkey -O - | sudo apt-key add -
apt-get install apt-transport-https debian-archive-keyring -y
echo "deb https://packagecloud.io/varnishcache/varnish5/debian/ stretch main" | sudo tee -a /etc/apt/sources.list.d/varnishcache_varnish5.list
echo "deb-src https://packagecloud.io/varnishcache/varnish5/debian/ stretch main" | sudo tee -a /etc/apt/sources.list.d/varnishcache_varnish5.list
apt update

apt install varnish -y
sudo mkdir -p /etc/systemd/system/varnish.service.d
echo [Service] > /etc/systemd/system/varnish.service.d/local.conf
echo ExecStart= >> /etc/systemd/system/varnish.service.d/local.conf
echo ExecStart=/usr/sbin/varnishd -a 0.0.0.0:80 -T localhost:6082 -f /etc/varnish/default.vcl -S /etc/varnish/secret -s malloc,256m >> /etc/systemd/system/varnish.service.d/local.conf

systemctl daemon-reload
service varnish restart
echo
echo ------------------------------------------
service varnish status
echo ------------------------------------------
netstat -lntp | grep varnish
echo ------------------------------------------
echo Done.
echo
echo


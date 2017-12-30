#!/bin/bash
wget http://repo.zabbix.com/zabbix/3.4/debian/pool/main/z/zabbix-release/zabbix-release_3.4-1+jessie.deb
dpkg -i zabbix-release_3.4-1+stretch_all.deb
apt-get update

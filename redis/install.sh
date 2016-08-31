#!/bin/bash
clear
echo -e "==========\nWORKING\n=========="
apt-get update
apt-get -y install   \
  build-essential    \
  tcl8.5

cd /tmp
wget http://download.redis.io/releases/redis-stable.tar.gz
tar xzf redis-stable.tar.gz
cd redis-stable
make
make test
make install
cd utils
./install_server.sh
update-rc.d redis_6379 defaults
  
echo -e "==========\nREADY\n=========="


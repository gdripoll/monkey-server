#!/bin/bash
clear
echo -e "==========\nWORKING\n=========="

# apt update
# apt install -y php-pear php5-dev libgmp-dev
# mkdir /tmp/cassandra && \
# cp config/* /tmp/cassandra && \
# cd /tmp/cassandra && \
# dpkg -i libuv_1.8.0-1_amd64.deb && \
# dpkg -i libuv-dev_1.8.0-1_amd64.deb && \
# dpkg -i cassandra-cpp-driver_2.4.2-1_amd64.deb && \
# dpkg -i cassandra-cpp-driver-dev_2.4.2-1_amd64.deb && \
# pecl install cassandra && \
# rm -rf /tmp/cassandra

sudo apt-get update
sudo apt-get install -y g++ git make cmake clang libssl-dev libgmp-dev php5-cgi php5-fpm php5 php5-dev openssl libpcre3-dev
sudo apt-get update
sudo apt-get install libc6
sudo apt-get -f install
sudo apt-get update

wget http://downloads.datastax.com/cpp-driver/ubuntu/14.04/dependencies/libuv/v1.7.5/libuv_1.7.5-1_amd64.deb
wget http://downloads.datastax.com/cpp-driver/ubuntu/14.04/dependencies/libuv/v1.7.5/libuv-dev_1.7.5-1_amd64.deb
wget http://downloads.datastax.com/cpp-driver/ubuntu/14.04/cassandra/v2.4.2/cassandra-cpp-driver_2.4.2-1_amd64.deb
wget http://downloads.datastax.com/cpp-driver/ubuntu/14.04/cassandra/v2.4.2/cassandra-cpp-driver-dev_2.4.2-1_amd64.deb

#sudo curl http://downloads.datastax.com/cpp-driver/ubuntu/14.04/libuv_1.7.5-1_amd64.deb > /var/www/html/libuv_1.7.5-1_amd64.deb
#sudo curl http://downloads.datastax.com/cpp-driver/ubuntu/14.04/libuv-dev_1.7.5-1_amd64.deb > /var/www/html/libuv-dev_1.7.5-1_amd64.deb
#sudo curl http://downloads.datastax.com/cpp-driver/ubuntu/14.04/cassandra-cpp-driver_2.0.1-1_amd64.deb > cassandra-cpp-driver_2.0.1-1_amd64.deb
#sudo curl http://downloads.datastax.com/cpp-driver/ubuntu/14.04/cassandra-cpp-driver-dev_2.0.1-1_amd64.deb > cassandra-cpp-driver-dev_2.0.1-1_amd64.deb

sudo dpkg -i libuv_1.7.5-1_amd64.deb
sudo dpkg -i libuv-dev_1.7.5-1_amd64.deb
sudo dpkg -i cassandra-cpp-driver_2.4.2-1_amd64.deb
sudo dpkg -i cassandra-cpp-driver-dev_2.4.2-1_amd64.deb
sudo apt-get update

sudo pecl install cassandra
sudo apt-get update


echo -e "==========\nREADY\n=========="

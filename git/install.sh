#!/bin/bash

apt-add-repository ppa:git-core/ppa
apt-get update
apt-get install git -y

apt-get autoremove -y
apt-get clean -y



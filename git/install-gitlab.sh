#!/bin/bash

clear
apt update
apt install curl

cd /tmp
curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash
apt-get install gitlab-ce
gitlab-ctl reconfigure

#
# Disponible en http://ip:80
# Setear password (8 letras) : ahivalabala
#

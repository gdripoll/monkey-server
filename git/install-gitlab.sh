#!/bin/bash

clear
apt update
apt install -y curl openssh-server ca-certificates
apt install -y postfix

cd /tmp
curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash
apt install -y gitlab-ce
gitlab-ctl reconfigure

#
# Disponible en http://ip:80
# Setear password (8 letras) : ahivalabala
#

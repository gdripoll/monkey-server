#!/bin/bash
clear
echo -e "==========\nWORKING\n=========="

mkdir /tmp/apigen &&\
cd /tmp/apigen && \
wget -q http://apigen.org/apigen.phar && \
chmod +x apigen.phar && \
mv apigen.phar /usr/local/bin/apigen && \
cd /tmp &&\
rm -rf /tmp/apigen

echo -e "==========\nREADY\n=========="


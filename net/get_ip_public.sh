#!/bin/bash
wget http://checkip.dyndns.org -O - | grep IP | cut -f 2- -d : | cut -f 1 -d \<

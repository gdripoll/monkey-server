#!/bin/bash

clear
echo -e "==========\nWORKING\n=========="

wget https://download.oracle.com/otn/java/jdk/10.0.2+13/19aef61b38124481863b1413dce1855f/jdk-10.0.2_linux-x64_bin.tar.gz?AuthParam=1568645206_1dfe5d00cbd2a584a62c738f170e14a7
sudo mkdir /usr/local/oracle-java-10
sudo tar -zxf jdk-10.0.2_linux-x64_bin.tar.gz -C /usr/local/oracle-java-10
sudo update-alternatives --install "/usr/bin/java" "java" "/usr/local/oracle-java-10/jdk-10.0.2/bin/java" 1500
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/local/oracle-java-10/jdk-10.0.2/bin/javac" 1500
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/local/oracle-java-10/jdk-10.0.2/bin/javaws" 1500

echo -e "==========\nJUMPSTART\n=========="
java -version

echo -e "==========\nREADY\n=========="


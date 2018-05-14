

# https://www.colinodell.com/blog/2015-12/installing-php-7-0-0
 
echo "deb http://packages.dotdeb.org jessie all" >> /etc/apt/sources.list
echo "deb-src http://packages.dotdeb.org jessie all" >> /etc/apt/sources.list

wget https://www.dotdeb.org/dotdeb.gpg
apt-key add dotdeb.gpg

apt-get update
apt-get install -y \
  php7.0         \
  php7.0-fpm     \
  php7.0-gd      \
  php7.0-json    \
  php7.0-mcrypt  \
  php7.0-dev     \
  php-pear       \
  php7.0-mysql   \
  php-bcmath     \
  php-mbstring   \
  php7.0-zip



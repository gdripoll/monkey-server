#!/bin/bash
clear
echo -e "==========\nWORKING\n=========="

# download
cd /tmp
wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
tar -zxvf phpMyAdmin-4.9.0.1-all-languages.tar.gz
mv phpMyAdmin-4.9.0.1-all-languages /usr/share/phpMyAdmin

# configure
cp -pr /usr/share/phpMyAdmin/config.sample.inc.php /usr/share/phpMyAdmin/config.inc.php
vim /usr/share/phpMyAdmin/config.inc.php


# $cfg['blowfish_secret'] = 'CfX1la/aG83gx1{7rADus,iqz8RzeV8x'; /* YOU MUST FILL IN THIS FOR COOKIE AUTH! */

# Also, uncomment the phpMyAdmin storage settings.
#/**
# * phpMyAdmin configuration storage settings.
# */
#/* User used to manipulate with storage */
#$cfg['Servers'][$i]['controlhost'] = 'localhost';
#// $cfg['Servers'][$i]['controlport'] = '';
#$cfg['Servers'][$i]['controluser'] = 'pma';
#$cfg['Servers'][$i]['controlpass'] = 'pmapass';
#/* Storage database and tables */
#$cfg['Servers'][$i]['pmadb'] = 'phpmyadmin';
#$cfg['Servers'][$i]['bookmarktable'] = 'pma__bookmark';
#$cfg['Servers'][$i]['relation'] = 'pma__relation';
#$cfg['Servers'][$i]['table_info'] = 'pma__table_info';
#$cfg['Servers'][$i]['table_coords'] = 'pma__table_coords';
#$cfg['Servers'][$i]['pdf_pages'] = 'pma__pdf_pages';
#$cfg['Servers'][$i]['column_info'] = 'pma__column_info';
#$cfg['Servers'][$i]['history'] = 'pma__history';
#$cfg['Servers'][$i]['table_uiprefs'] = 'pma__table_uiprefs';
#$cfg['Servers'][$i]['tracking'] = 'pma__tracking';
#$cfg['Servers'][$i]['userconfig'] = 'pma__userconfig';
#$cfg['Servers'][$i]['recent'] = 'pma__recent';
#$cfg['Servers'][$i]['favorite'] = 'pma__favorite';
#$cfg['Servers'][$i]['users'] = 'pma__users';
#$cfg['Servers'][$i]['usergroups'] = 'pma__usergroups';
#$cfg['Servers'][$i]['navigationhiding'] = 'pma__navigationhiding';
#$cfg['Servers'][$i]['savedsearches'] = 'pma__savedsearches';
#$cfg['Servers'][$i]['central_columns'] = 'pma__central_columns';
#$cfg['Servers'][$i]['designer_settings'] = 'pma__designer_settings';
#$cfg['Servers'][$i]['export_templates'] = 'pma__export_templates';


cp ./nginx /etc/nginx/conf.d/phpMyAdmin.conf

mkdir /usr/share/phpMyAdmin/tmp
chmod 777 /usr/share/phpMyAdmin/tmp
chown -R www-data:www-data /usr/share/phpMyAdmin


echo correr
echo 'mysql < /usr/share/phpMyAdmin/sql/create_tables.sql -u root -p'
echo 'mysql < ./config.sql -u root -p'
echo 'service nginx restart'


echo -e "==========\nREADY\n=========="

# reconfigurar
# dpkg-reconfigure mysql-apt-config

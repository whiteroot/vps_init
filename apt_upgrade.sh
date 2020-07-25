#!/bin/bash

# update system
apt update
apt upgrade -y

# install VNC
apt install -y xfce4 xfce4-goodies tigervnc-standalone-server tigervnc-xorg-extension

# install apache + PHP + mysql
apt install -y apache2 libapache2-mod-php php-mysql mariadb-server mariadb-client php-gd php-curl php-dom php-mbstring php-imagick php-zip

# other softwares
apt install -y net-tools vim certbot python3-certbot-apache sysstat
echo 'ENABLED="true"' > /etc/default/sysstat


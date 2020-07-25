#!/bin/bash

read -p 'Enter your web site domain name: ' dn
cat mywebsite.conf |sed -e "s/mydomain.com/$dn/g" > /etc/apache2/sites-available/$dn.conf
a2ensite $dn
systemctl restart apache2

wget https://wordpress.org/latest.tar.gz
tar -xvzf latest.tar.gz 
mv  wordpress /var/www/$dn


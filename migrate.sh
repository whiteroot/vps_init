#!/bin/bash

ls -l /var/www
read -p 'dir name in /var/www: ' dir
if test ! -d /var/www/$dir
then
  echo $dir not found in /var/www
  exit 1
fi

grep DB_NAME /var/www/$dir/wp-config.php
read -p 'DB name: ' db

mysqldump -B $db > /tmp/$db.sql

tar -cjf /tmp/$dir.tar.bz2  /var/www/$dir/ /tmp/$db.sql /etc/apache2/sites-available
ls -l /tmp/$dir.tar.bz2


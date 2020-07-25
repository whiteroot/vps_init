#!/bin/bash

read -p 'DB name: ' db
read -p 'username: ' u
read -p 'password: ' p

SQL_FILE=/tmp/wp_create.sql
cat wp_create_db_user.sql |sed -e "s/DBNAME/$db/" |sed -e "s/USERNAME/$u/" |sed -e "s/PASSWORD/$p/" > $SQL_FILE
echo ''
cat $SQL_FILE
mysql < $SQL_FILE


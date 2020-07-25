#!/bin/bash

echo 'DB name:'
read db

echo 'DB username:'
read u

echo 'DB password:'
read p

SQL_FILE=/tmp/wp_create.sql
cat wp_create_db_user.sql |sed -e "s/DBNAME/$db/" |sed -e "s/USERNAME/$u/" |sed -e "s/PASSWORD/$p/" > $SQL_FILE
cat $SQL_FILE
mysql < $SQL_FILE


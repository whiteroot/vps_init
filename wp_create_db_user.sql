create database DBNAME;
create user USERNAME@localhost identified by 'PASSWORD';
grant all on DBNAME.* to USERNAME@localhost;
flush privileges;


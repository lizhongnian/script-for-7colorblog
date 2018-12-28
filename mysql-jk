#!/bin/sh
port=$(netstat -nlt|grep 3306|wc -l)
if [ $port -ne 1 ]
then
service mysqld start
echo 'restart mysql success!'
else
echo 'mysql is running!'
fi

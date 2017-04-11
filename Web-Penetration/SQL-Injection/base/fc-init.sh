#!/bin/sh

mysqld &> /dev/null &

echo 
echo "Replace Flag String..."
cd /app
FLAG=$(env | grep FLAG | sed "s/.*=//g")
sed -i "s/FLAG/${FLAG}/g" data.sql

echo 
echo "Running Server..."

php5 -S 0.0.0.0:80 &> /dev/null
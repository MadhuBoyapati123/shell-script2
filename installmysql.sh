#!bin/bash

USERID=$(id -u) 

if [ $USERID -ne 0 ]
then
    echo "ERROR: Please run this with Root acces"
fi

yum install mysql-server -y



#!bin/bash

USERID=$(id -u) 

if [ $USERID -ne 0 ]
then
    echo "ERROR: Please run this with Root acces"
fi

yum remove  postfix -y

if [ $? -ne 0 ]  # Added space after 'if'
then
    echo "Postfix remove failed"
else
    echo "Postfix removed successfully"
fi

yum remove  maven -y

if [ $? -ne 0 ]  # Added space after 'if'
then
    echo "Maven remove failed"
else
    echo "Maven removed successfully"
fi

yum remove  mysql-server -y

if [ $? -ne 0 ]  # Added space after 'if'
then
    echo "mysql remove  failed"
else
    echo "mysql removed successfully"
fi

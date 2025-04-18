#!bin/bash

USERID=$(id -u) 

if [ $USERID -ne 0 ]
then
    echo "ERROR: Please run this with Root acces"
fi

yum install postfix -y

if [ $? -ne 0 ]  # Added space after 'if'
then
    echo "Postfix installation failed"
else
    echo "Postfix installated successfully"
fi

yum install maven -y

if [ $? -ne 0 ]  # Added space after 'if'
then
    echo "Maven installation failed"
else
    echo "Maven installated successfully"
fi

yum install mysql-server -y

if [ $? -ne 0 ]  # Added space after 'if'
then
    echo "mysql installation failed"
else
    echo "mysql installated successfully"
fi

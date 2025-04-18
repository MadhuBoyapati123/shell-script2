#!bin/bash

USERID=$(id -u) 

if [ $USERID -ne 0 ]
then
    echo "ERROR: Please run this with Root acces"
fi

yum remove postfix -y

if [ $? -ne 0 ]  # Added space after 'if'
then
    echo "Postfix installation failed"
else
    echo "Postfix installated successfully"
fi

yum remove maven -y

if [ $? -ne 0 ]  # Added space after 'if'
then
    echo "Maven installation failed"
else
    echo "Maven installated successfully"
fi

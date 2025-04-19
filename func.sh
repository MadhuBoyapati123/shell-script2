#!/bin/bash

USERID=$(id -u)

VALIDATE() {
    if [ $1 -ne 0 ]
    then
        echo "remove Failure please check the logs"
        exit 1
    else
        echo "remove  Success You have done great work"
    fi
}

if [ $USERID -ne 0 ]
then 
    echo "ERROR: Please run this with Root access"
    exit 1
fi

yum remove postfix -y
VALIDATE $?

yum remove maven -y
VALIDATE $?





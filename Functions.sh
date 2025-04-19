$!bin/bash


USERID=$(id-u)

VALIDATE()

if [ $1 -ne 0 ]
then
    echo "Installation Failure please check the logs"
    exit 1
else
    echo "Installation Success You have done great work"
fi


if [ $USERID -ne 0]
then 
    echo "ERROR: Please run this with Root access"
    exit 1
fi

yum install postfix -y
VALIDATE($?)
yum install maven -ty
VALIDATE($?)






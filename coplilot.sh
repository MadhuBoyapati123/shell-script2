#!/bin/bash

USERID=$(id -u)

# Function to validate the success of a command
VALIDATE() {
    if [ $1 -ne 0 ]; then
        echo "$2 failed. Please check the logs."
        exit 1
    else
        echo "$2 succeeded."
    fi
}

# Check if the script is run as root
if [ $USERID -ne 0 ]; then
    echo "ERROR: Please run this script with root access."
    exit 1
fi

# Install Postfix
echo "Installing Postfix..."
yum install postfix -y
VALIDATE $? "Postfix installation"

# Install MySQL
echo "Installing MySQL..."
yum install mysql-server -y
VALIDATE $? "MySQL installation"

# Start and enable MySQL service
echo "Starting and enabling MySQL service..."
systemctl start mysqld
VALIDATE $? "Starting MySQL service"

systemctl enable mysqld
VALIDATE $? "Enabling MySQL service"

echo "Installation of MySQL and Postfix completed successfully."
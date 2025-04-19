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

echo "Installation code for MySQL and Postfix has been removed."
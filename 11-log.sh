#!/bin/bash

ID=$(id -u)

DATE=$(date +%F-%H-%M-%S)

LOG_FILE="/tmp/$0-$DATE.log"

VALIDATE(){
    if [ $1 != 0 ]
    then
        echo "ERROR::$2 was....FAILED."
        exit 1
    else
        echo "$2....was SUCCESS."
    fi
}

if [ $ID -ne 0 ]
then
    echo "user has no root access and not able to install."
    exit 1

else
    echo "user has root access."
fi

yum install mysql -y &>> $LOG_FILE

VALIDATE $? "Installing MySql"

yum install git -y  &>> $LOG_FILE

VALIDATE $? "Installing Git"
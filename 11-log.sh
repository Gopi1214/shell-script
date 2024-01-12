#!/bin/bash

ID=$(id -u)

DATE=$(date +%F-%H-%M-%S)

LOG_FILE="/tmp/$0-$DATE.log"

R="\e[31m"
G="\e[32m"
N="\e[0m"

VALIDATE(){
    if [ $1 != 0 ]
    then
        echo -e "ERROR::$2 was....$R FAILED."
        exit 1
    else
        echo -e "$2....was $G SUCCESS."
    fi
}

if [ $ID -ne 0 ]
then
    echo -e "$R user has no root access and not able to install."
    exit 1

else
    echo -e "$G user has root access."
fi

yum install mysql -y &>> $LOG_FILE

VALIDATE $? "Installing MySql"

yum install git -y  &>> $LOG_FILE

VALIDATE $? "Installing Git"
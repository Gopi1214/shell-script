#!/bin/bash

ID=$(id)

VALIDATE(){
    if [ $1 != 0 ]
    then
        echo "ERROR::$2 was....FAILED."
        exit 1
    else
        echo "$2....was SUCCESS".
    fi
}

    if [ $ID -ne 0 ]
    then
    echo "user has no root access and not able to install."
    exit 1

    else
    echo "user has root access."
    fi

    yum install mysql -y

    VALIDATE $? Installing MySql

    yum install git -y

    VALIDATE $? Installing Git
#!/bin/bash

ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "script started running at $TIMESTAMP" &>> $LOGFILE

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo -e "$2 was ... $R FAILED $N"
        exit 1
    else
        echo -e "$2 was ...$G SUCCESS $N"
    fi
}


if [ $ID -ne 0 ]
then 
    echo -e "$R ERROR:: $N user has no root acces, not able to install or execute commands"

else 
    echo "user has root acces"

fi

#echo "All argumets passed: $@"
#git mysql net-tools nginx
#package=git for first time

for package in $@
do 
    yum list installed $package &>> $LOGFILE
    if [ $? -ne 0 ]
    then 
        yum install $package -y &>> $LOGFILE
        VALIDATE $? "Insatallation of $package"

    else
        echo -e "$package is already installed...$Y SKIPPING $N"
    fi
done


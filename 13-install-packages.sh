#!/bin/bash

ID=$(id -u)

R="\e[31m"
G="\e[32m"
N="\e[0m"


if [ $ID -ne 0 ]
then 
    echo -e "$R ERROR:: $N user has no root acces, not able to install or execute commands"

else 
    echo "user has root acces"

fi

echo "All argumets passed: $@"
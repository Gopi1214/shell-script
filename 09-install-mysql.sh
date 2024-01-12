#!bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "ERROR:: user has no root acces, so not allwed to install mysql."
    exit 1 #you can give other than 0
else
    echo "root user install mysql."
   
fi #fi is reverse of if, indicating the end of condition

yum install mysql -y

if [ $? != 0 ]
then
    echo "ERROR:: installation was failed."
    exit 1
else
    echo "installation was success".
fi


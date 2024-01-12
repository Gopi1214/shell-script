#!bin/bash

ID=$(id -u)

if [ $ID != 0 ]
then
    echo "user has no root acces, so not allwed to install mysql"
else
    echo "user is able to install mysql"
   
fi #fi is reverse of if, indicating the end of condition

yum install mysql -y
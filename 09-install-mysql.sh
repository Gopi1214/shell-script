#!bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
  echo "user has no root acces, so not allwed to install mysql."
else
  echo "root user install mysql."
   
fi #fi is reverse of if, indicating the end of condition

yum install mysql -y
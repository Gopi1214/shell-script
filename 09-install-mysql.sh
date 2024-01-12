#!bin/bash

ID=$(id -u)

if ($ID != 0)
then
    echo "user has no root acces, so not allwed to install mysql"
else
    echo "user is able to install mysql"
    yum install mysql -y
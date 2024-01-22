#!/bin/bash

file="/etc/passwd"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


if [ ! -f $file ]
then
    echo "$R ERROR: source directory $file does not exists$N"

fi

#find . -type f -mtime +14 -name
#. -->> current working directory
#f -->> files
#m -->> morethan 

while IFS=":" read -r Username Password UID GID GECOS Home_directory Command
do
    echo "username: $Username"
    echo "Password: $Password"
    echo "UID": $UID"
done < $file

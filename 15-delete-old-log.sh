#!/bin/bash

SOURCE_DIR="/tmp/shellscript-logs"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


if [ ! -d $SOURCE_DIR ]
then
    echo "$R ERROR: source directory $SOURCE_DIR does not exists$N"

fi

FIND_OLD_FILES=$(find $SOURCE_DIR -type f -mtime +14 -name "*.log")

while IFS=read -r line; 
do
    echo "Delete files: $line"
    rm -rf $line
done << $FIND_OLD_FILES


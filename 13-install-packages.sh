#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then 
    echo "ERROR:: user has no root acces, not able to install or execute commands"

else 
    echo "user has root acces"

fi

echo "All argumets passed: $@"
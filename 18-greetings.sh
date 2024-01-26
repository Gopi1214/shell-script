#!/bin/bash

NAME=""
WISHES=""

USAGE(){
    echo "USAGE:: $(basename $0) -n $NAME -w $WISHES"
    echo "options::"
    echo "-n, specify the name(mandatory)"
    echo "-w, specify the wishes Ex: Good Morning"
    echo "-h, help and exit"
}

while getops ":n:w:h" arg; do
    case $arg in
        n)name=$OPTARG;;
        w)wishes=$OPTARG;;
        h|*) usage;;
    esac
done
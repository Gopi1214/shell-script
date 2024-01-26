#!/bin/bash

NAME=""
WISHES="Good Morning"

USAGE(){
    echo "USAGE:: $(basename $0) -n $NAME -w $WISHES"
    echo "options::"
    echo "-n, specify the name(mandatory)"
    echo "-w, specify the wishes (optional). Default whish is good morning"
    echo "-h, help and exit"
}

while getopts ":n:w:h" opt; do
    case "${opt}" in
        n) NAME=${OPTARG};;
        w) WISHES=${OPTARG};;
    esac
done

#if [ -z "$NAME" ] || [ -z "$WISHES" ]; then
if [ -z "$NAME" ]; then
    #echo "ERROR: -n and -w are mandatory options"
    echo "ERROR: -n is mandatory option"
    USAGE
    exit 1
fi

echo "Hello $NAME. $WISHES, I am learning shell script"


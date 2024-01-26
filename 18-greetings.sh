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

while getopts ":n:w:h" opt; do
    case "${opt}" in
        n) NAME=${OPTARG};;
        w) WISHES=${OPTARG};;
        h|*) USAGE;;
        :) USAGE;;
    esac
done

if [ -z "$NAME" ] || [ -z "$WISHES" ]; then
    echo "ERROR: -n and -w are mandatory"
    USAGE
    exit 1
fi

echo "Hello $NAME. $wishes I am learning shell script"


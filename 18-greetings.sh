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
    case $opt in
        n) NAME=$OPTARG;;
        w) WISHES=$OPTARG;;
        h|*) USAGE; exit;;
        :) USAGE; exit;;
    esac
done



# usage() { echo "Usage: $0 [-s <45|90>] [-p <string>]" 1>&2; exit 1; }

# while getopts ":s:p:" o; do
#     case "${o}" in
#         s)
#             s=${OPTARG}
#             ((s == 45 || s == 90)) || usage
#             ;;
#         p)
#             p=${OPTARG}
#             ;;
#         *)
#             usage
#             ;;
#     esac
# done
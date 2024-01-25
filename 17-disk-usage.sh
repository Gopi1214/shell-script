#!/bin/bash

DISK_USAGE=$(df -hT | grep -vE 'tmp|File')
DISK_THRESHOLD=1
message=""

while IFS= read -r line
do
    usage=$(echo $line | awk '{print $6F}' | cut -d % -f1)
    partition=$(echo $line | awk '{print $1F}')
    if [ $usage -ge $DISK_THRESHOLD ]
    then
        message+="High disk usage on $partition : $usage <br>"
    fi
done <<< $DISK_USAGE

echo -e "message : $message"

#echo "$message" | mail -s "High Disk usage" jonnalagaddamahi@gmail.com

sh mail.sh "DEVOPS_TEAM" "HIGH_DISK_USAGE" "$message" "jonnalagaddamahi@gmail.com" "ALERT High_Disk usage"

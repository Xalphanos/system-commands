#!/bin/bash
# Practice shell exercise for NPPE; processes input per the task comments.


while read -r line; do 
    username=$(echo "$line" | cut -d: -f1)


    echo "$username" | tr '[:upper:]' '[:lower:]'
done


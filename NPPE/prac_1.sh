#!/bin/bash


while read -r line; do 
    username=$(echo "$line" | cut -d: -f1)


    echo "$username" | tr '[:upper:]' '[:lower:]'
done


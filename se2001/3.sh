#!/bin/bash
while read -r t; do

[[ -z "$t" ]] && exit

for (( i=0 ; i <t; i++)); do
    if ! read -r n; then
    break
    fi
    sum=0

    for (( j=1 ; j<=n ;j+=2)); do
        sum=$((sum + j*j*j))
    done
    echo "$sum"


    if (( $sum % 2 !=0 )); then 
        break
    fi
done



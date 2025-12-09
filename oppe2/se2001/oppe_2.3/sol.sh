#!/bin/bash
# Reference solution script for the oppe_2.3 task.


read -r n

a=1
b=1

for (( row=1; row<=n; row++ )); do

    for ((k=1; k<=n-row; k++)); do

        printf "\t"
        done
    for ((col=1; col<=row; col++)); do

        printf "%d" "$a"

        
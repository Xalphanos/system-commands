#!/bin/bash

# Read the whole line, e.g.: [1,2,3]+[4,5,6]
read -r line

# Remove the [ and ] characters
line=$(printf '%s\n' "$line" | tr -d '[]')

# Split around the '+' into left and right parts
# Example: "1,2,3+4,5,6" -> left="1,2,3"  right="4,5,6"
IFS='+' read -r left right <<< "$line"

# Split each side by comma into arrays a[] and b[]
IFS=',' read -r -a a <<< "$left"
IFS=',' read -r -a b <<< "$right"

# Length of the vectors (assume same length)
len=${#a[@]}

printf '['
for ((i=0; i<len; i++)); do
    sum=$(( a[i] + b[i] ))

    # Add comma before every element except the first
    if [ "$i" -gt 0 ]; then
        printf ','
    fi

    printf '%s' "$sum"
done
printf ']\n'

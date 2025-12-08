#!/bin/bash

# Read n from standard input
read -r n

# First two fibonacci numbers
a=1
b=1

# Outer loop: rows 1 to n
for ((i = 1; i <= n; i++)); do
    # Inner loop: print i numbers in row i
    for ((j = 1; j <= i; j++)); do
        # Print current fibonacci number (a)
        # If it's the last number in the row, don't print a trailing space
        if (( j == i )); then
            printf "%d" "$a"
        else
            printf "%d " "$a"
        fi

        # Move to next fibonacci number
        next=$((a + b))
        a=$b
        b=$next
    done

    # End of row
    printf "\n"
done


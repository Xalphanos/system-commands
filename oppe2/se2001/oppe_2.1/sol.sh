#!/bin/bash


while IFS=: read -r user x uid gid name home shell; do



    shell_name=$(printf "%s\n" "$shell"| grep -o '[^/]*$' )


    [ -z "$shell_name"] && shell_name=$shell


    printf "%s\n" "shell_name" | tr '[:lower:]' '[:upper:]'
done

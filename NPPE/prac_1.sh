#!/bin/bash
# Documentation:
# Purpose: Read lines from STDIN, extract usernames, and print them in lowercase.
# Inputs: Lines of text where the username is before the first `:` (like `/etc/passwd`).
# Output: Lowercased usernames, one per line.
# How it works (syntax notes):
# - `while read -r line; do ... done` loops over each input line.
#   `-r` prevents backslash escaping.
# - `username=$(...)` captures command output into a variable.
# - `echo "$line" | cut -d: -f1`:
#   - `cut -d:` splits on `:`
#   - `-f1` selects the first field (username).
# - `tr '[:upper:]' '[:lower:]'` converts A‑Z to a‑z.
# Example:
#   Input: `Alice:x:1000:1000::/home/Alice:/bin/bash`
#   Output: `alice`


while read -r line; do 
    username=$(echo "$line" | cut -d: -f1)


    echo "$username" | tr '[:upper:]' '[:lower:]'
done

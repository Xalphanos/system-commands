# Practice solution script for Problem3; see the embedded assignment notes.
: '
Given a file words.txt containing a string in each line in the format FIRST_second. Every string is a combination of two words joined with an underscore(_), the first word FIRST consists of all uppercase letters and the second word second consists of all lowercase letters. Write a bash command/script using sed to convert all the string to SECOND_first.
After conversion
- The first and the second words should be swapped.
- The uppercase word should be converted to lowercase word and vice versa.

The file `words.txt` is located in the current working directory.
'
# Documentation:
# Purpose: Swap the two underscore-separated words per line and invert case.
# Inputs: File `words.txt` in the current directory.
# Output: Transformed lines printed to STDOUT.
# How it works:
# - First `sed` captures `FIRST_second` as two groups and rewrites to `second_FIRST`.
# - Second `sed` uses `y///` transliteration to flip lowercase ↔ uppercase
#   across the entire line.
# Notes: Does not modify `words.txt`; only prints transformed output.
#Solution
script() { 
cat words.txt | sed -e "s/^\(.*\)_\(.*\)\$/\2_\1/g" | sed "y/abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ/ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz/"
}

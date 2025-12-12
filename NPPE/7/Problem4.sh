# Practice solution script for Problem4; see the embedded assignment notes.
: '
Write a sed command to print the count of lines that starts with a digit in the file input.txt. Assume that there is at least one line in the file input.txt that starts with a digit. 
Do not use the commands wc or awk , or even these keywords in comments or anywhere in your answer.
'

# Documentation:
# Purpose: Count how many lines in `input.txt` start with a digit.
# Inputs: File `input.txt` in the current directory.
# Output: One integer count.
# How it works:
# - `sed -ne "/^[[:digit:]]/p"` prints only lines whose first character is a digit.
# - Piping to `sed -n "$="` outputs the number of printed lines.
#Solution:
script() { 
sed -ne "/^[[:digit:]]/p" input.txt | sed -n "\$="
}

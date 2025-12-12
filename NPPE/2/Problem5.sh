# Practice solution script for Problem5; see the embedded assignment notes.
: '
Consider a file named data.txt in the current working directory.
Write a script to determine if this file has more than 16 lines or not.
Your script should print Yes if the lines are more than 16; else print No.
'
# Documentation:
# Purpose: Check whether `data.txt` has more than 16 lines.
# Inputs: File `data.txt` in the current directory.
# Output: `Yes` if line count > 16, otherwise `No`.
# How it works:
# - Counts lines with `wc -l`.
# - Compares the result to 16 using `-gt`.
# - Prints the appropriate response.
#Solution
script() {
if [ `cat data.txt | wc -l` -gt 16 ]; then
    echo "Yes"
else
    echo "No"
fi
}

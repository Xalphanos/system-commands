# Practice solution script for Problem3; see the embedded assignment notes.
: '
Add the string “EOF alpha” at the end of the file(starting at a new line) alpha.txt then append 
the contents of the file numbers.txt at the end of the file(starting at a new line) alpha.txt. alpha.txt and numbers.txt
are located in the current working directory.
'

# Documentation:
# Purpose: Append a marker line and then append another file to `alpha.txt`.
# Inputs: `alpha.txt` and `numbers.txt` in the current directory.
# Output: Modified `alpha.txt` with:
#   - a new line containing `EOF alpha`
#   - followed by the full contents of `numbers.txt`.
# How it works:
# - `echo "EOF alpha" >> alpha.txt` appends the marker plus a newline.
# - `cat numbers.txt >> alpha.txt` appends all lines from `numbers.txt`.
#Solution
script() {
echo "EOF alpha" >> alpha.txt; cat numbers.txt >> alpha.txt
}

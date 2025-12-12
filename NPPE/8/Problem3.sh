# Practice solution script for Problem3; see the embedded assignment notes.
: '
In the lines that start with a digit, if there is a words "delta"(case sensitive) replace it with the word "gamma". 
Replace only the first occurrence of the word "delta" in the desired lines. 
The filename where the contents present are input.txt.
'
# Documentation:
# Purpose: Replace `delta` with `gamma` only on lines that start with a digit.
# Inputs: File `input.txt` in the current directory.
# Output: Transformed file printed to STDOUT.
# How it works:
# - Address `/^[[:digit:]]/` selects lines whose first character is a digit.
# - `s/delta/gamma/` replaces only the first occurrence of `delta` on those lines.
# Notes: Non-digit-starting lines are left unchanged.
#Solution
script() { 
sed -e '/^[[:digit:]]/s/delta/gamma/' input.txt
}

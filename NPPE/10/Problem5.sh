# Practice solution script for Problem5; see the embedded assignment notes.
: '
Write an Awk command to print the first field of the all the lines containing more than 20 characters in the file marks.csv. The field separator in the file is comma (,).
'
# Documentation:
# Purpose: Print roll numbers only for “long” lines (>20 chars total).
# Inputs: `marks.csv` in current directory.
# Output: First field of each long line, one per line.
# How it works (syntax notes):
# - `-F,` sets comma as field separator.
# - `length($0)>20` is a pattern; awk runs the action only on matching lines.
# - `$0` is whole line; `$1` is first field.
# - `{print $1}` prints that field.
#Solution
script() {
awk -F, 'length($0)>20{print $1}' marks.csv
}

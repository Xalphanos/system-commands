# Practice solution script for Problem5; see the embedded assignment notes.
: '
Consider a file named marks.csv containing roll number and marks of variable number of subjects of students. The values are comma separated values and in the format
RollNo,Subject1,Subject2,Subject3,So on...

Write an Awk command to print all the roll numbers(RollNo) in the file.
'

# Documentation:
# Purpose: Print the first CSV field (roll number) from every line.
# Inputs: `marks.csv` in the current directory.
# Output: One roll number per line.
# How it works (syntax notes):
# - `-F,` tells awk the field separator is a comma.
# - `$1` means “first field of the current line”.
# - `{print $1}` prints that field for every record.
#Solution:
script() {
awk -F, '{print $1}' marks.csv
}

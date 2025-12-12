# Practice solution script for Problem4; see the embedded assignment notes.
: '
In a course, the instructor asked the students to submit their projects in a single file named as the student’s roll number. A typical roll number of a student is a 10 character string which is a combination of a four digit(decimal) year and six character hexadecimal number, e.g. "20201f3acd". The instructor specified that the name of the file should be in lower case but some students mistakenly used uppercase for their file names. Each file name is either entirely in lower case or entirely in upper case with numbers.
Your task is to create two arrays(shell variables) named lower and upper. Array lower should not contain the file names that have upper case letters and array upper should contain all the file names that have upper case letters.
Note: The project files are located in the current directory

Hint:
arr=(`ls`) # Each element in arr corresponds to the output from the ls
'

# Documentation:
# Purpose: Split project filenames into lowercase and uppercase roll-number arrays.
# Inputs: Files in the current directory named like `YYYYhhhhhh` (year + 6 hex chars).
# Output: Two arrays:
# - `lower`: filenames containing only lowercase hex letters (or digits).
# - `upper`: filenames containing any uppercase hex letters.
# How it works:
# - First `egrep` selects names matching the roll-number pattern.
# - Second filter for `lower` keeps names with lowercase letters (or all digits).
# - Second filter for `upper` keeps names with uppercase letters.
# Notes: Uses `ls` output as the source list.
#Solution:
script() {
#lower=(`ls | grep "^[0-9]\{4\}[0-9a-f]\{6\}"`)
#upper=(`ls | grep "^[0-9]\{4\}[0-9A-F]\{6\}" | grep -v "[0-9]\{6\}$"`)

lower=(`ls |egrep "[[:digit:]]{4}[[:xdigit:]]{6}"|egrep "[[:lower:]]|[[:digit:]]{10}"`);
upper=(`ls |egrep "[[:digit:]]{4}[[:xdigit:]]{6}"|egrep "[[:upper:]]"`);
}

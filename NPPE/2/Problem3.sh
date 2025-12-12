# Practice solution script for Problem3; see the embedded assignment notes.
: '
Print the number of lines present in ‘file1’ and ‘file2’ combined, your solution should not print anything else.
‘file1’ and ‘file2’ are located in the current working directory.

Hint: Multiple files can be given as argument to ‘cat’ command.
'
# Documentation:
# Purpose: Count total lines across `file1` and `file2`.
# Inputs: `file1` and `file2` in the current directory.
# Output: A single integer line count.
# How it works:
# - `cat file1 file2` concatenates both files to STDOUT.
# - `wc -l` counts the number of newline-terminated lines in the combined stream.
# Notes: Alternative commented solutions show other equivalent approaches.
#Solution
script() { 
cat file1 file2 | wc -l

# Solution 2
# cat file2 >> file1; wc -l file1

# Solution 3
# cat file2 >> file1; cat file1 | wc -l
}

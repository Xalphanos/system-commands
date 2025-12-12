# Practice solution script for Problem4; see the embedded assignment notes.
: '
Write a command to print the name of directories(in the current working directory) that have read, write and execute permissions for other users. 
Print only the directory name on each line.
'

# Documentation:
# Purpose: List directory names in `.` where "others" have read, write, and execute.
# Inputs: Current working directory contents.
# Output: Directory name(s), one per line.
# How it works:
# - `ls -l` produces long listings with a permission string like `drwxrwxrwx`.
# - `grep "d......rwx"` keeps only entries that are directories (`d`) and whose
#   last three permission bits for others are `rwx`.
# - `grep -o "\\S\\+$"` extracts only the final whitespace-separated field,
#   which is the directory name.
#Solution
script() {
ls -l | grep "d......rwx" | grep -o "\S\+$"
}


ls -l | grep "d......rwx" | grep -o "\S\+$"

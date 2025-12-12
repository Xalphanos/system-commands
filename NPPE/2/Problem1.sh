# Practice solution script for Problem1; see the embedded assignment notes.
: 'Write a Bash command to print the file types of all the files stored in the current working directory. The output should be in the format as described below. The first column is file/directory name and the second column tells about the file type.

file.txt:                             empty
Notes:                                directory
SysComm:                              symbolic link to ../SysComm Dropbox
System Commands Sample Questions.md:  UTF-8 Unicode text, with very long lines
System Commands Sample Questions.pdf: PDF document, version 1.7
'

# Documentation:
# Purpose: Show the detected type of every entry in the current directory.
# Inputs: None; operates on all files/directories in `.`.
# Output: Lines like `name: type`, as produced by the `file` utility.
# How it works:
# - `file *` expands `*` to all directory entries.
# - `file` inspects each entry and prints its best-guess type.
#Solution
script() {
file *
}

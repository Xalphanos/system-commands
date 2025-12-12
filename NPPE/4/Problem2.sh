# Practice solution script for Problem2; see the embedded assignment notes.
: '
"dir_1" and "dir_2" are directories in current working directory. Create a symbolic(soft) link to the file "file_1" present in "dir_1" and store it as "file_2" in "dir_2".
Hint: The link to file_2 should be either absolute from current working directory i.e. / or relative to dir_2.
'
# Documentation:
# Purpose: Create a symbolic link in `dir_2` pointing to `dir_1/file_1`.
# Inputs:
# - `dir_1/file_1` (target file)
# - `dir_2/` (destination directory)
# Output: A symlink named `file_2` inside `dir_2`.
# How it works:
# - Practice scaffolding creates both directories and a sample `file_1`.
# - `ln -s /dir_1/file_1 /dir_2/file_2` creates a soft link named `file_2`
#   that resolves to `dir_1/file_1`.
# Notes: Alternative commented commands show relative-link variants.
#Solution
script() {
mkdir dir_1 dir_2
touch dir_1/file_1
ln -s /dir_1/file_1 /dir_2/file_2
#
# OR
# ln -s /dir_1/file_1 dir_2/file_2
#
# Solution 2
# cd dir_2; ln -s ../dir_1/file_1 file_2
}

# Practice solution script for Problem1; see the embedded assignment notes.
: 'Write a bash script which takes one argument as the name of a file and prints Yes if the file has read 
permission only for the owner and no other permissions for owner or other users, else do not print anything. 
The file given in the argument will be present in the current working directory.
'

# Documentation:
# Purpose: Check if a file is readable only by its owner.
# Inputs: One argument: filename in the current directory.
# Output: Prints `Yes` only when permissions are exactly `-r--------`.
# How it works:
# - `ls -l $1` shows the permission bits for the file.
# - The regex `^-r--------` matches "owner read only, no other bits set".
# - If the match succeeds, the script prints `Yes`; otherwise prints nothing.
#Solution
script() {
if [[ $(ls -l $1 | grep -e "^-r--------.*") ]] ; then
    echo "Yes"
fi
}

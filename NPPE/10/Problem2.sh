# Practice solution script for Problem2; see the embedded assignment notes.
: '
Write a script to print the users(one on each line) who are logged in successfully. Extract the information from the file named myauth.log located in the current working directory. The output should contain usernames only and should be unique. 

Hint: Use uniq command to get all distinct lines of the output.

Contents of myauth.log is given below
.......
'
# Documentation:
# Purpose: Print unique usernames that logged in successfully.
# Inputs: `myauth.log` in current directory.
# Output: Unique usernames, one per line (sorted).
# How it works (syntax notes):
# - `egrep "systemd-logind\\[[0-9]+\\]"` keeps only successful login lines.
# - `grep user` narrows to lines containing the word `user`.
# - `cut -d " " -f 11` picks the 11th space-separated field (username.field).
# - `cut -d "." -f 1` removes trailing `.service`/suffix.
# - `sort | uniq` sorts and removes duplicates.
#Solution
script() {
egrep "systemd-logind\[[0-9]+\]" myauth.log | grep user | cut -d " " -f 11 | cut -d "." -f 1 | sort | uniq
}

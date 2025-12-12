# Practice solution script for Problem2; see the embedded assignment notes.
: '
Write a script to print the users(one on each line) who are logged in successfully. Extract the information from the file named myauth.log located in the current working directory. The output should contain usernames only and should be unique. 

Hint: Use uniq command to get all distinct lines of the output.

Contents of myauth.log is given below:
.....
'
# Documentation:
# Purpose: List distinct users who logged in successfully.
# Inputs: Log file `myauth.log` in the current directory.
# Output: Unique usernames, one per line.
# How it works:
# - Filters to `systemd-logind[...]` lines (successful logins).
# - Keeps only lines containing `user`.
# - Extracts the username field with `cut`, then removes any `.suffix`.
# - Sorts and runs `uniq` to print each username once.
# Notes: Output is sorted because of the `sort` step.
#Solution
script() {
egrep "systemd-logind\[[0-9]+\]" myauth.log | grep user | cut -d " " -f 11 | cut -d "." -f 1 | sort | uniq
}

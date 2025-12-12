# Practice solution script for Problem2; see the embedded assignment notes.
: '
Mine the logs given in the file myauth.log present in the current working directory to print all the usernames  to which user student switched to using su command. 

Note: switching back to the previous user should not be accounted.

Hint: Basically you have to grep all the lines where 'su' command is run successfully and fetch the username to which the user student switched to.

Contents of myauth.log is given below
......
'

# Documentation:
# Purpose: From `myauth.log`, list users that `student` successfully switched to using `su`.
# Inputs: File `myauth.log` in the current directory.
# Output: Target usernames, one per line, in log order.
# How it works (syntax notes):
# - `egrep "\\bsu\\b"` finds lines containing the word `su` (`\\b` = word boundary).
# - `grep -v FAILED` removes failed su attempts (`-v` means invert match).
# - `egrep "\\(to .*\\)" -o` prints only the `(to USER)` part (`-o` = only match).
# - `egrep "\\b\\w*\\b" -o` extracts word tokens from that part.
# - `grep -v to` drops the literal word `to`, leaving usernames.
# Notes: Does not de-duplicate; repeated switches will repeat in output.
# Solution
script() {
egrep "\bsu\b" myauth.log | grep -v FAILED | egrep "\(to .*\)" -o | egrep "\b\w*\b" -o | grep -v to 
}

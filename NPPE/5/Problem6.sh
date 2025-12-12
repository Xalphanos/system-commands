# Practice solution script for Problem6; see the embedded assignment notes.
: '
Mine the logs given in the file myauth.log present in the current working directory to print all the usernames  to which user student switched to using su command. 
Note: switching back to the previous user should not be accounted.

Hint: Basically you have to grep all the lines where 'su' command is run successfully and fetch the username to which the user student switched to.

Contents of myauth.log is given below:
....
'
# Documentation:
# Purpose: Print usernames that `student` successfully switched to via `su`.
# Inputs: Log file `myauth.log` in the current directory.
# Output: Target usernames, one per line, in order of appearance.
# How it works:
# - `egrep "\\bsu\\b"` keeps lines mentioning the `su` command.
# - `grep -v FAILED` removes unsuccessful attempts.
# - `egrep "\\(to .*\\)" -o` extracts the `(to USER)` part.
# - The next `egrep` pulls out word tokens, and `grep -v to` drops the literal `to`,
#   leaving just the usernames.
# Notes: This pipeline does not de-duplicate; it mirrors log order.
#Solution
script() {
egrep "\bsu\b" myauth.log | grep -v FAILED | egrep "\(to .*\)" -o | egrep "\b\w*\b" -o | grep -v to 
}

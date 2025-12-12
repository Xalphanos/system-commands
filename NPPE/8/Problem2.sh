# Practice solution script for Problem2; see the embedded assignment notes.
:'
Write a Bash command to print the number of failed login attempts which are recorded in the file myauth.log located in the current working directory.

Contents of myauth.log is given below
.......
'

# Documentation:
# Purpose: Count failed login attempts in the auth log.
# Inputs: File `myauth.log` in the current directory.
# Output: One integer count.
# How it works:
# - Filters lines containing the exact phrase `FAILED LOGIN`.
# - Pipes the matches to `wc -l` to count them.
#Solution
script() {
egrep "\bFAILED LOGIN\b" myauth.log | wc -l
}

# Practice solution script for Problem2; see the embedded assignment notes.
: '
Print the previous login time of the user guest in the format MMM DD HH:MM:SS. Where MMM, DD, HH, MM and SS corresponds to Month (E.g. Nov), Date, Hours, Minutes and Seconds respectively. 
Extract the information from the logs available in the file myauth.log in the current directory. 
Sample log file below.
.....
'
# Documentation:
# Purpose: Print the most recent previous login time for user `guest`.
# Inputs: Log file `myauth.log` in the current directory.
# Output: Timestamp in the form `MMM DD HH:MM:SS`.
# How it works:
# - Greps for successful "session opened" lines for user guest.
# - `tail -1` picks the last such occurrence (previous login).
# - `cut -d " " -f 1-3` prints the first three whitespace fields, which are
#   month, day, and time in typical auth log format.
#Solution
script() {
grep "\bsession opened for user guest\b" myauth.log | tail -1 | cut -d " " -f 1-3
}

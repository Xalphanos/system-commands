# Practice solution script for Problem1; see the embedded assignment notes.
: 'We have a file named "systemcommands.txt" in the present working directory.Write a Bash command to change its permissions to

user: read, write, execute
group: execute
others: write
'

# Documentation:
# Purpose: Set specific permissions on `systemcommands.txt`.
# Inputs: File `systemcommands.txt` in the current directory.
# Output: No STDOUT; updates file permissions.
# How it works:
# - Uses octal mode `712`:
#   - `7` (user): read+write+execute (rwx)
#   - `1` (group): execute only (--x)
#   - `2` (others): write only (-w-)
# - `chmod 712 systemcommands.txt` applies these bits in one step.
#Solution
script() {
chmod 712 systemcommands.txt
}

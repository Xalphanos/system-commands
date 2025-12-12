# Practice solution script for Problem2; see the embedded assignment notes.
: '
Write a command that runs in a child shell, prints "hello" and exits with the exit code 179.
'

# Documentation:
# Purpose: Demonstrate running a command in a child shell and returning a custom exit code.
# Inputs: None.
# Output: Prints `hello` to STDOUT, then exits.
# How it works:
# - `bash -c` starts a subshell and runs the quoted commands.
# - The subshell echoes `hello` and then `exit 179` sets its exit status.
# Notes: The parent shell receives exit code 179 from this command.
# Solution
script() { 
bash -c "echo hello; exit 179"
}

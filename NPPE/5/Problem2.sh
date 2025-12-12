# Practice solution script for Problem2; see the embedded assignment notes.
: '
Print the absolute path where the command wget is located.
'
# Documentation:
# Purpose: Indicate the command that prints the absolute path of `wget`.
# Inputs: None.
# Output: When `script()` is called, it prints the text `which wget`.
# How it works:
# - The solution is shown as a command snippet inside `echo`.
# - Running `which wget` in a shell returns the full path to the `wget` binary.
# Notes: This file presents the intended one-line answer rather than executing it.
#Solution
script() { echo '
which wget
'
}

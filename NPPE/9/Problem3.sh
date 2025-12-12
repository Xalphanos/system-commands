# Practice solution script for Problem3; see the embedded assignment notes.
: '
Consider a special programming file functions.sh that contains several functions (A function is a block of code). Write a bash script/command using sed to insert a line "# START FUNCTION" before the starting of a function and a line "# END FUNCTION" at the end of the function.
Starting of a function in this file can be identified as a line that has some string followed by "(", then followed by ")" or some string followed by ")", and this line should end with "{".
Ending of a function can be identified by a line containing only "}" in the whole line.
In this file curly braces "{" and "}" are not used for any other purpose. Do not change the original file just print the output to STDOUT.
'
# Documentation:
# Purpose: Print `functions.sh` with `# START FUNCTION`/`# END FUNCTION` markers.
# Inputs: `functions.sh` in the current directory.
# Output: Marked-up version to STDOUT; original file unchanged.
# How it works (syntax notes):
# - First sed rule:
#   - Pattern `/[[:alnum:]+](.*)[[:space:]]*{/` matches a function header line
#     (name + `()` + `{`).
#   - `i` inserts a line *before* the matched line.
# - Second sed rule:
#   - Pattern `/^[[:space:]]*}/` matches a line that is only `}` (function end).
#   - `a` appends a line *after* the matched line.
# - `\\` at end of line continues the sed command in shell.
#Solution
script() { 
sed -e "/[[:alnum:]+](.*)[[:space:]]*{/i # START FUNCTION" \
    -e "/^[[:space:]]*}/a # END FUNCTION" functions.sh
}

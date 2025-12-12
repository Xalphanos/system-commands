# Practice solution script for Problem5; see the embedded assignment notes.
: '
Write a bash script that accepts any number of arguments and print the odd numbered arguments, i.e. first argument($1), third argument($3), fifth argument($5) and so on. 
In the output the values of the arguments should be separated by a space and printed on the same line.
'
# Documentation:
# Purpose: Print only the odd-positioned arguments (1st, 3rd, 5th, ...).
# Inputs: Any number of command-line arguments.
# Output: The odd-indexed argument values separated by spaces on one line.
# How it works:
# - Maintains a `count` starting at 1 for the first argument.
# - For each argument, prints it if `count` is odd.
# - Uses `echo -n` to stay on the same line and adds a trailing space.
# Notes: The loop respects quoted arguments via `"$@"`.
#Solution
script() {
count=1
for var in "$@"; do
        if [ $((count%2)) -ne 0 ]; then
                echo -n "$var "
        fi

        ((count=count+1))
done
} 

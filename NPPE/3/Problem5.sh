# Practice solution script for Problem5; see the embedded assignment notes.
: '
Write a bash script that accepts a few arguments(all numbers) and performs the following functions.
Prints the string Error if the number of arguments supplied is not equal to 2.
If the number of arguments is equal to two, print their sum.
'
# Documentation:
# Purpose: Validate argument count and sum two numbers.
# Inputs: Exactly two numeric command-line arguments.
# Output:
# - If argument count != 2: prints `Error`.
# - If argument count == 2: prints their arithmetic sum.
# How it works:
# - Checks `$#` (number of arguments).
# - Uses Bash arithmetic expansion `$(( ... ))` to add `$1` and `$2`.
# Notes: The two checks are separate to match the assignment wording.
#Solution
script() { 
if [ $# != 2 ]; then
  echo Error
fi

if [ $# = 2 ]; then
  echo $(( $1 + $2 ))
fi 
}

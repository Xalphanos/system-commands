# Practice solution script for Problem1; see the embedded assignment notes.
: '
Write a bash script that reads a value from the standard input stream and prints PNUM if the value is a postive number or 0; prints NNUM if it is a negative number; else print STRING.
'

# Documentation:
# Purpose: Classify input as positive number/zero, negative number, or non-numeric string.
# Inputs: One value read from STDIN.
# Output:
# - `PNUM` if the input is numeric and not negative (positive or 0).
# - `NNUM` if the input is numeric and starts with `-`.
# - `STRING` if the input is not a number.
# How it works:
# - Uses a regex to test whether the input looks like a number.
# - If numeric, uses a second regex to check for a leading minus sign.
# - Prints the corresponding label.
#Solution:
script() {
read n
num="^-?[0-9]*\.?[0-9]*$"
neg="^-"
if [[ $n =~ $num ]]; then
  [[ $n =~ $neg ]] && echo NNUM || echo PNUM
else
  echo STRING
fi

}

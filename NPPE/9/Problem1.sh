# Practice solution script for Problem1; see the embedded assignment notes.
: '
Write a bash script that takes any number of inputs(all numbers) and prints the maximum and minimum value from all the inputs in the format Maximum: max | Minimum: min, where max is the maximum value and min is the minimum value.
'
# Documentation:
# Purpose: Find the maximum and minimum of all numbers passed as arguments.
# Inputs: Any number of numeric command-line arguments (e.g., `./Problem1.sh 5 2 9`).
# Output: `Maximum: <max> | Minimum: <min>`.
# How it works (syntax notes):
# - `$1` is the first argument; we start `max` and `min` from it.
# - `"$@"` is the list of all arguments, preserving spaces.
# - `for i in "$@"; do ... done` loops through each argument.
# - `[ $i -ge $max ]` is a numeric “greater or equal” test (`-ge`).
# - `[ $i -le $min ]` is a numeric “less or equal” test (`-le`).
# - Variables are updated when a bigger/smaller value is found.
# - `echo` prints the final formatted result.
#Solution
script() {
max=$1
min=$1

for i in "$@"; do
	if [ $i -ge $max ]; then
		max=$i
	fi
	if [ $i -le $min ]; then
		min=$i
	fi
done;

echo "Maximum: $max | Minimum: $min"
}

# Practice solution script for Problem1; see the embedded assignment notes.
: 'Write a bash script that takes a number as an argument and prints "Yes" if the number is a prime number, else prints "No".
'

# Documentation:
# Purpose: Check if the given number is prime.
# Inputs: One integer argument (e.g., `./Problem1.sh 17`).
# Output: `Yes` if prime, else `No`.
# How it works (syntax notes):
# - `flag=0` assumes prime until a divisor is found.
# - `number=$1` reads the argument.
# - ``check=`echo "sqrt($number)" | bc` `` computes √number using `bc`.
# - `for (( i=2; i<=check; i++ ))` is a C‑style loop from 2 to √number.
# - `$((number%i))` is arithmetic expansion; checks remainder.
# - If remainder is 0, number has a divisor → set `flag=1`.
# - After loop, `flag==0` means no divisor found → prime.
# Notes: Works for numbers ≥2; assumes valid numeric input.
#Solution
script() {
flag=0
number=$1
check=`echo "sqrt($number)" | bc`
for (( i=2; i<=check; i++ )); do
	if [ $((number%i)) -eq 0 ]; then
		flag=1
	fi
done
if [ $flag -eq 0 ]; then
	echo Yes
else
   echo No
fi
}

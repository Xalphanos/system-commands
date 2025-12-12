# Practice solution script for Problem6; see the embedded assignment notes.
: '
Write a bash script that prints the sum of all even numbers of an array of numbers. The array variable is named as number_arr. 
'
# Documentation:
# Purpose: Sum all even integers provided on STDIN.
# Inputs: A whitespace-separated list of numbers read into array `number_arr`.
# Output: The sum of even numbers as a single integer.
# How it works:
# - `read -a number_arr` reads a line of numbers into an array.
# - Iterates through each element.
# - Uses modulo (`num % 2`) to test evenness.
# - Accumulates even numbers into `sum`, then prints `sum`.
#Solution
script(){
read -a number_arr
sum=0
for num in ${number_arr[@]}; do
    if [ $((num%2)) -eq 0 ]; then
        ((sum+=$num))
    fi
done
echo $sum
}

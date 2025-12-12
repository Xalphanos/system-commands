# Practice solution script for Problem5; see the embedded assignment notes.
: '
Write an awk script that reads a value n from the stdin within awk script, then prints the sum of odd numbers and sum of even numbers each on a separate line respectively, from the set of natural numbers from 1 to n (ends inclusive).
'
# Documentation:
# Purpose: Read `n` from STDIN and print sums of odds and evens from 1..n.
# Inputs: One integer `n` provided on standard input.
# Output:
# - Line 1: sum of odd numbers in 1..n.
# - Line 2: sum of even numbers in 1..n.
# How it works:
# - `getline n < "-"` reads from STDIN inside awk.
# - Loops i=1..n, adding i to `sumodd` or `sumeven` based on parity.
# - Prints the two sums in order.
#Solution
script() { awk '
BEGIN {
  getline n < "-";  
  sumodd=0;   
  sumeven=0;
  for(i=1;i<=n;i++) {
    if (i%2 == 1) {
      sumodd = sumodd + i;
    }
    else {
      sumeven = sumeven + i;
    }
  } 
  print sumodd;
  print sumeven;
}
' 
}

# Practice solution script for Problem4; see the embedded assignment notes.
: '
Given a file input.txt containing a word on each line, print all the words(one in each line) that occur between the words "FROM" and "TO"(but excluding these words). The match should be case sensitive for the given words and the words in the file are not unique, they can repeat.

For e.g. for Input file
$ cat input.txt 
This
is 
TO
some 
4word
FROM from FROM
THE 
b45eginning
TO
OKAY FRom okay FROM
give 
me 
44some
FROM
SOME
TO
TO
54TO4
FROM
from
Output should be
THE 
b45eginning
give 
me 
44some
SOME
from
'

# Documentation:
# Purpose: Print all lines occurring between `FROM` and `TO` markers.
# Inputs: File `input.txt` in the current directory.
# Output: The intervening lines (excluding the marker lines).
# How it works:
# - `sed -n '/FROM/,/TO/p'` prints each inclusive block from `FROM` to the next `TO`.
# - Subsequent `sed` commands delete lines that are exactly `FROM` or `TO`.
# Notes: Matching is case sensitive as required.
#Solution:
script() { 
# Solution 1
sed -n '/FROM/,/TO/p' input.txt | sed '/FROM/d' | sed '/TO/d'
# Solution 2
# sed -n '/FROM/,/TO/{//!p;}' input.txt
# Solution 3
# sed -n '/FROM/,/TO/{/FROM/d;/TO/d;p;}'
}

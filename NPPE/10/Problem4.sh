# Practice solution script for Problem4; see the embedded assignment notes.
: '
Write a sed script to

Replace every three letter abbreviation of day of week to the respective number as given in the table. The abbreviation can be in any case or mixed case

Abbreviation(case insensitive match)	Replace with
sun	1
mon	2
tue	3
wed	4
thu	5
fri	6
Sat	7
Change the first and third occurrences of the character ! to ., on each line.

Note: complete partial tasks for partial marking. Test case description: Input is the input file to sed. Output is the output printed on running your sed script.
'

# Documentation:
# Purpose: Replace day abbreviations with numbers, and change 1st & 3rd `!` to `.`.
# Inputs: Text from STDIN (driver captures into `input.txt`).
# Output: Transformed text printed to STDOUT.
# How it works (syntax notes):
# - Driver makes a temp dir and reads input into `input.txt`.
# - Sed rules:
#   - `s/sun/1/gI` etc replace day names case‑insensitively (`I` flag).
#   - `s/!/./1` replaces the first `!` on each line.
#   - `s/!/./2` then replaces what is now the third original `!`
#     (because the first one is already gone).
#Solution:
dir=$RANDOM
while [ -a $dir ]; do dir=$RANDOM; done
mkdir $dir
cd $dir

cat >input.txt
sed '
s/sun/1/gI
s/mon/2/gI
s/tue/3/gI
s/wed/4/gI
s/thu/5/gI
s/fri/6/gI
s/sat/7/gI
s/!/./1
s/!/./2
' input.txt 2>&1

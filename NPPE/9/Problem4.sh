# Practice solution script for Problem4; see the embedded assignment notes.
: '
Write a sed script to

Swap the first and second fields in the given input having field separator as a colon :

Replace every occurrence of the character ? if found at the end of a line to !

Note: complete partial tasks for partial marking. Test case description: The input is the input file. And output is the output of running your sed script.
'
# Documentation:
# Purpose: Apply two sed edits on colon-separated input.
# Inputs: Text from STDIN (practice driver saves it to `input.txt`).
# Output: Transformed text to STDOUT.
# How it works (syntax notes):
# - Driver part creates a temp folder and captures input using `cat >input.txt`.
# - Sed script:
#   1) `s/^\\([^:]*\\):\\([^:]*\\)/\\2:\\1/`
#      - `^` anchors at line start.
#      - `\\([^:]*\\)` captures “anything up to colon” as group 1.
#      - Second capture grabs field 2.
#      - Replacement `\\2:\\1` swaps fields 1 and 2.
#   2) `s/?$/!/`
#      - `?$` matches a literal `?` at end of line (`$` = end).
#      - Replaces it with `!`.
#Solution
dir=$RANDOM
while [ -a $dir ]; do dir=$RANDOM; done
mkdir $dir
cd $dir

cat >input.txt
sed '
s/^\([^:]*\):\([^:]*\)/\2:\1/
s/?$/!/
' input.txt 2>&1

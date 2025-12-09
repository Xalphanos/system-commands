# Practice solution script for Problem3; see the embedded assignment notes.
: '
Add the string “EOF alpha” at the end of the file(starting at a new line) alpha.txt then append 
the contents of the file numbers.txt at the end of the file(starting at a new line) alpha.txt. alpha.txt and numbers.txt
are located in the current working directory.
'
#Solution
script() {
echo "EOF alpha" >> alpha.txt; cat numbers.txt >> alpha.txt
}

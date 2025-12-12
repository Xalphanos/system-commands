# Practice solution script for Problem5; see the embedded assignment notes.
: '
Write a script using AWK to print the file with the maximum number of lines. 
Assume only one file that have the maximum number of line among the given files.
'
# Documentation:
# Purpose: Identify which `file*.txt` has the most lines.
# Inputs: Files matching `file*.txt` in the current directory.
# Output: The single filename with the maximum number of lines.
# How it works:
# - awk sees each file in turn; `FNR` is the line number within that file.
# - Whenever `FNR` exceeds the current `max`, it updates `max` and remembers `FILENAME`.
# - At the end, prints the remembered filename.
# Notes: Assumes a unique maximum as stated in the prompt.
#Solution
script() { awk '
{ 
  if(max < FNR) { 
    max=FNR; 
    f=FILENAME; 
  } 
}
END { print f; }
' file*.txt
}

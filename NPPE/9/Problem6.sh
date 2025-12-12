# Practice solution script for Problem6; see the embedded assignment notes.
: '
A software company has published some best practices for writing the code. One of the best practice mentioned is that if no line in your code should exceed 50 characters in total including all type of characters or spaces.

Given a bash script that intends to print the names of all .c files that contain one or more lines with length more than 50 characters(as specified above).

The awk script within this bash script to check the files as per above condition is missing in the code, complete that
'
# Documentation:
# Purpose: Print names of `.c` files that have any line longer than 50 chars.
# Inputs: All `*.c` files in current directory (driver above may create samples).
# Output: Violating filenames, one per line.
# How it works (syntax notes):
# - Outer `for file in *.c; do ... done` loops over each C file.
# - awk program:
#   - `BEGIN { flag=0 }` runs once before reading lines.
#   - For each line, `length($0)` gives line length; if >50 set `flag=1`.
#   - `END { if (flag==1) print FILENAME }` runs after file ends and prints
#     the file name only if a long line was seen.
# - `$0` is the full current line in awk; `FILENAME` is current file name.
#Solution
eof="EOF"
while read file; do
  if [[ $file =~ $eof ]]; then
    break
  fi
  while read line; do
    if [[ $line =~ $eof ]]; then 
      break
    fi
    echo $line >>$file
  done
done
######### Driver code ends here

######### Script starts here
for file in *.c; do
  awk '


    BEGIN {
      flag=0;
    }

    {
      if (length($0)>50) flag=1;
    }

    END {
      if (flag==1) print FILENAME;
    }
  ' $file
done

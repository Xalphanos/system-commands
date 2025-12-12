# Practice solution script for Problem3; see the embedded assignment notes.
: '
Without using the wc or awk commands(instead use sed as Bash command), write a bash script that accepts any number of arguments. Out of these some would be options(hyphen plus a character like -l or -c) and the last argument will be a file path(use ${@: -1} to access the last argument, there is a space before -1). Only four options are accepted by your script -l, -w, -n and -s.

Assume that file path given will always be for a valid file and we will refer it as file in the next lines. For options,

If no option is supplied to your script do nothing.

If -l option is supplied, print the number of lines in the file.

If -w option is supplied, print the number of words in the file. Assume that any string between spaces is a word. i.e. if using awk count the number of fields in each line to get the word count.

If -n option is supplied, print the number of lines having only digits(no alphabets or spaces) in the file.

option -s also accepts an argument say str. In this case print the number of lines containing the string str.

The above options can be supplied together or more than once. Print the required count for each appearance of the option on a new line. For e.g.

if -l and -w are both supplied together in the sequence print count of lines and count of words each on separate lines.
If -l, -n and -l options are supplied in the sequence then print number of lines, number of lines containing only digits and finally again number of lines in the file each on separate line.
Note: Your bash script should not even contain any variable or comment that contians the string wc or awk.

Hints:

Use while getopts style code.
Use sed to find the count of lines as specified in the conditions aboce.
'
# Documentation:
# Purpose: Support options to report counts from a given file using only `sed`.
# Inputs:
# - Any number of options from `-l`, `-w`, `-n`, `-s <str>`.
# - The last argument is treated as the file path.
# Output: For each option appearance, prints the corresponding count on a new line.
# How it works:
# - Captures the filename as the last argument via `${@: -1}`.
# - Uses `getopts` to read options in order, allowing repeats.
# - For each option:
#   - `-l`: uses `sed -n "$="` to count all lines.
#   - `-w`: splits on spaces to one token per line, drops empties, then counts.
#   - `-n`: selects digit-only lines, then counts them.
#   - `-s str`: selects lines containing `str`, then counts.
# Notes: If no valid options are supplied, the script prints nothing.
#Solution
script() { echo '
filename=${@: -1}

while getopts "wlns:" options; do
  case "${options}" in
    s)
      str=${OPTARG}
      sed "s/ /\n/g" $filename | sed -ne "/$str/ p" | sed -n "\$="
      ;;
    w)
      sed "s/ /\n/g" $filename | sed -ne "/^\$/! p" | sed -n "\$="
      ;;
    l)
      sed -n "\$=" $filename 
      ;;
    n)
      sed -ne "/^[[:digit:]][[:digit:]]*$/ p" $filename | sed -n "\$="
      ;;
    *)
      echo "ERROR"
      ;;
  esac
done
'
}

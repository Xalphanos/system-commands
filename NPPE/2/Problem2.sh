# Practice solution script for Problem2; see the embedded assignment notes.
: '
Create a file documents.txt containing all the possible file names in the format file_XYZ.txt where X is a lower case alphabet, Y is also a lower case alphabet and Z is a number between 0 and 4.
Few examples of file names in this format are 'file_dh3.txt', 'file_sd1.txt', 'file_ja0.txt', 'file_at2.txt'.
The file names in documents.txt should be separated by a single space.

Hint: Use echo to solve this with a single command.
'

# Documentation:
# Purpose: Generate all filenames of the form `file_xyN.txt` and store them.
# Inputs: None; uses Bash brace expansion.
# Output: `documents.txt` containing all combinations separated by spaces.
# How it works:
# - `file_{a..z}{a..z}{0..4}.txt` expands to 26×26×5 filenames.
# - `echo` prints the expanded list space-separated.
# - `>` redirects the list into `documents.txt`, overwriting any previous content.
#Solution
script() {
echo file_{a..z}{a..z}{0..4}.txt > documents.txt
}

# Practice solution script for Problem5; see the embedded assignment notes.
: '
Write an awk script to find unintentionally repeated (duplicate) words in the file 'myfile.txt'. 
For example, sometimes a file can contain sentences like "The the building is beautiful". 
Print the repeated words on the order of occurence at one per line.
'
# Documentation:
# Purpose: Find unintentionally repeated consecutive words in `myfile.txt`.
# Inputs: File `myfile.txt` in the current directory.
# Output: Each word that repeats immediately after itself, one per line.
# How it works:
# - awk keeps a `prev` word across fields and lines.
# - Lowercases the whole line to make comparison case-insensitive.
# - For each word, if it equals `prev`, prints it.
# - Updates `prev` to current word before moving on.
# Notes: Only consecutive duplicates are reported (e.g., "the the"), not later repeats.
#Solution
script() { awk '
BEGIN {
  prev="";
  
}

{
  $0=tolower($0);
  #gsub(/[^A-Za-z0-9 \t]/, "");
  for (i = 1; i <= NF; i++) {
    if ($i == prev) {
      print $i
                
    }
    prev = $i;
  }
}

' myfile.txt
}

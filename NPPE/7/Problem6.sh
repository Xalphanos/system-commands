# Practice solution script for Problem6; see the embedded assignment notes.
: '
You have a csv file named groceries.csv that contains a list of grocery items and their unit cost. The two fields are separated by comma(,). This file will be given as input to your Awk script.

Write an Awk script that takes two arguments(command line) named item and n, where item is the item name and n is the number of units, then prints the total cost of purchasing n units of the item item. The script prints only a number. i.e. you need to find the item cost of the item given in argument while parsing the input file.
Note: You can directly use these variables with the given name in your Awk script. Assume that the item given in the argument will always be present in the csv file.


Sample(suppose your script is named as yourScript.awk)
Here the cost of 3 Tomatoes needs to be calculated. Cost of one Tomato is 40 as seen from the csv file. So total cost = 3*40 

$ cat groceries.csv
1,Tomato,40
2,Brinjal,35
3,Banana,60
​
$ awk -f yourScript.awk groceries.csv Tomato 3
120

'
# Documentation:
# Purpose: Compute total cost for buying `n` units of a given grocery item.
# Inputs:
# - `groceries.csv` in the current directory (comma-separated, item in field 2, cost in field 3).
# - Command-line args: `$1` = item name, `$2` = number of units.
# Output: One integer total cost.
# How it works:
# - Writes an awk program to `yourScript.awk`.
# - awk scans each row, compares field 2 to the requested item.
# - When it matches, multiplies unit cost (field 3) by `n`, prints result, and exits.
# - The wrapper passes `item` and `n` as awk variables with `-v`.
#Solution
script() { echo '

BEGIN {
 FS = ",";
}
{
  a = $2
  b = $3
  if (a ~ item) {
    ans = b*n;
    print ans;
    exit;
  }
}

' > yourScript.awk
awk -v item=$1 -v n=$2 -f yourScript.awk groceries.csv
}

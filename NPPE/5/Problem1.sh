# Practice solution script for Problem1; see the embedded assignment notes.
: 'We want to change the file permissions of "someFile.txt" file as follows.

user: execute
group: execute, read
others: write
We will use the command chmod XXX someFile.txt where XXX represents a 3 digit number used to set the above permissions. Write a bash command to create a file named XXX.digits in the current working directory such XXX is the same three digit number used to set the permissions as mentioned above. The file your command creates can be empty.
For e.g. If your think the command chmod 111 someFile.txt will change the permission of file someFile.txt as mentioned above, then your solution should create a file named 111.digits in the current working directory.
'

# Documentation:
# Purpose: Record the octal permission digits needed for a chmod command.
# Inputs: None; based on the permission specification in the prompt.
# Output: Creates an empty file named `<digits>.digits` in the current directory.
# How it works:
# - Translates permissions to octal:
#   - user: execute only = 1
#   - group: read + execute = 4 + 1 = 5
#   - others: write only = 2
# - Touches `152.digits` to indicate `chmod 152 someFile.txt`.
#Solution
script() { 
touch 152.digits
}

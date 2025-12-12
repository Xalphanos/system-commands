# Practice solution script for Problem1; see the embedded assignment notes.
: '
We created some directories and change our current working directory using the cd command as given by the sequence of commands below. Write a bash command to make the directory "level2" as your current working directory. i.e. after executing your solution, if we execute the command "pwd" it should return the path of the directory "level2".
Write your solution as a single line bash command.
	
cd /
mkdir level1
cd level1
mkdir level2
cd level2
mkdir level3
cd ..
cd ..
'
# Documentation:
# Purpose: Move to the `level2` directory and confirm the location.
# Inputs: None; assumes the directory structure `/level1/level2` exists.
# Output: Prints the absolute path of `level2`.
# How it works:
# - `cd /level1/level2` changes the working directory directly to `level2`.
# - `pwd` prints the resulting current directory path.
# Notes: Wrapped in `script()` for reuse.
#Solution
script() {
cd /level1/level2
pwd
}

# Practice solution script for Problem4; see the embedded assignment notes.
: '
Write a command to print the name of directories(in the current working directory) that have read, write and execute permissions for other users. 
Print only the directory name on each line.
'
#Solution
script() {
ls -l | grep "d......rwx" | grep -o "\S\+$"
}


ls -l | grep "d......rwx" | grep -o "\S\+$"

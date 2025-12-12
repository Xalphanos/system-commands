# Practice solution script for Problem6; see the embedded assignment notes.
: '
Consider a directory named "perf_folder" containing some files with different extensions, present in the current working directory. Write a bash script that accepts an argument(name of destination directory), adds a prefix string "program_" to the file names in the directory "perf_folder" meeting the below criteria.
The file extension is ".c".
The file names should containing the substring perf.

Also move all the files meeting the above criteria after renaming to the directory(destination) whose name is specified as an argument to your script. The destination directory may or may not be present in the current working directory, if not present create the directory under current working directory.

For e.g. the argument to your script is perf_programs, i.e. perf_programs is the destination directory for renamed files.

If below is the output of ls perf_folder when run in your current working directory.

perf_results.cvc	perf_conf.xml		set_perf_input.c	perf_params.c
start_test.c	stop_test.c	results.txtscript.sh

Then after running your script, 
the new output of  running ls perf_folder in your current working directory should be,

perf_results.cvc	perf_conf.xml	start_test.c	stop_test.c	results.txt		script.sh
and output of running command ls perf_programs in your current working directory should be, 

program_set_perf_input.c	program_perf_params.c
'

# Documentation:
# Purpose: Rename and move certain `.c` files from `perf_folder`.
# Inputs:
# - Directory `perf_folder` in the current directory.
# - Destination directory name as `$1`.
# Output:
# - Files in `perf_folder` matching `*perf*.c` are renamed with prefix `program_`
#   and moved into the destination directory.
# How it works:
# - Checks whether destination directory exists using `ls -d $1`.
# - If not, creates it with `mkdir $1`.
# - Enters `perf_folder` and loops over files matching shell glob `*perf*.c`
#   (only `.c` files whose names contain `perf`).
# - Moves each match to `../$1/` while adding the `program_` prefix.
# Notes: Uses `mv` so files are removed from `perf_folder` after moving.
#Solution:
script() { 
# If directory as argument one is not present, create it.
ls -d $1
if [[ $? -ne 0 ]]; then
        mkdir $1
fi

cd perf_folder
for file in *perf*.c; do
       mv $file ../$1/program_$file
done
} 

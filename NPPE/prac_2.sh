# Documentation:
# This file is a collection of practice drafts/snippets.
# Many sections are incomplete or have syntax errors, so it may not run as-is.
# Below are the intended ideas for each block to help exam prep.
#
# Block 1 (arrays lower/upper):
# - Intention: read filenames, put names containing uppercase letters into `upper`,
#   and the rest into `lower`.
# - Key syntax you should know:
#   - `lower=()` makes an empty array; `lower+=("x")` appends.
#   - `[ -z "$name" ]` checks empty string (spaces around `]` are required).
#   - `[[ "$name" =~ [A-Z] ]]` regex‑matches uppercase letters.
#   - `for v in "${lower[@]}"` loops over array elements.
#
# Block 2 (sum/min/max):
# - Intention: loop over numeric args, compute sum, min, max.
# - Correct syntax reminders:
#   - No spaces around `=` in assignments: `sum=0`.
#   - Use arithmetic expansion for math: `sum=$((sum + num))`.
#   - Numeric comparisons use `-lt`, `-gt`, etc inside `[ ]`.
#
# Block 3 (sum of odd-positioned input lines):
# - Intention: read numbers into array `nums`, sum elements at odd positions.
# - Syntax:
#   - `"${!nums[@]}"` gives array indices.
#   - `$((i+1))` arithmetic for 1-based position.
#
# Block 4 (check package install status from log):
# - Intention: read a package name, grep its actions, print Installed/Not installed.
# - Syntax:
#   - `if [ "$#" -ne 1 ]; then ... fi` checks arg count.
#   - `grep "$pkg:" file | awk 'END{print $3}'` prints last action.
#
# Block 5 (sum and max of numeric args):
# - Intention: ignore non-numbers, compute sum and maximum.
# - Syntax:
#   - `[[ "$arg" =~ ^[0-9]+$ ]]` checks digits only.
#
# Block 6 (move files by extension):
# - Intention: move `.c/.py` to `code/`, images to `images/`.
# - Syntax:
#   - `case "$file" in pattern) ... ;; esac`.
#
# Block 7/8 (sed/awk fragments):
# - Intention: show sample sed swap rule and awk max-by-subject idea.
# - Treat these as notes, not runnable code here.
#~/bin/bash

lower=()
upper=()


while read -r name; do
    [ -z "$name"] && continue

    if [["$name" =~ [A-Z] ]]; then
    upper+=("$name")

    else
        lower+=($"name")
    fi
done

for v in "$lowercase[@]"; do
    echo "$v"
done

for v in "$upper[@]"; do   
    echo "$v"

done


///



sum =0 
have_num=0
min=
max=


for arg in "$@"; do
    if [[ "$arg" =~ ^-[0-9]+$ ]]; then
    num =$arg

    if [ "$have_num" -eq 0 ]; then
    sum= $num
    min= $num
    max= $num
    have_num=1


    else
        if ["$num" lt "$min"]; then
            min=$num
        fi 

        if [] 







#!/bin/bash



while read -r line; do

    [-z "$line"] && continue
        nums+=("$line")

    done

for i in "${!nums[@]}"; do
    pos=$((i+1))
    if (( pos % 2 == 1)); then
        sum=$((sum + nums[i]))
    fi
done 
echo "$sum"






#!/bin/bash


if [ "$#" -ne 1]; then
    echo "Usage: $0 pkname" >&2
    exit 1
pkg="$1"

last_actions=""



last_action=$(grep "$pkg:" | awk '{action=$3} END { print action}'})


if [ -z "$last_action"]; then
    echo "Not installed"
elif  [ "$last_action" = "install"]; then
    echo "Installed"
else
    echo "NOT installed"
fi




#!/bin/bash
sum=0
max=0
found=0



for arg in "$@"; do

    if [[ "$arg" =~ ^[0-9]+$ ]]; then
        sum= $((sum + arg))

        if ((arg > max)); then
            max = $arg
        
        fi
        found=1
    fi
done

if (( found == 1)); then
 echo "Sum: $sum , Max: $max"
else
    echo "No valid numbers"
fi




#!/bin/bash


mkdir -p code images

for file in *; do
    if [-d "$file" ]; then
     continue
    fi

    case "$file" in
        *.c|*.py)
            mv "$file" code/
            ;;
        *.jpg| *.png)
            mv "$file" image/
            ;;
        esac
    done



#!/bin/bash

s/^\([^:]*\):\([^:]*\):/\2-\1-/


Swapping the first and second fields 
sed- Very high priority


BEGIN { FS=","}


NR==1{next}

{
    subject = $2
    score = $3 + 0

    if ( !(subject in max) || score > max[subject]){ max[subject]= score}

}

END {
    for (s in max){
        printf "%s: %d\n", s, max[s]
    }
    }


sed -



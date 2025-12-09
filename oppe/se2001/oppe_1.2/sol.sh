# Reference solution script for the oppe_1.2 task.
input=$(cat)
sum=0

for num in $(grep -oE '-?[0-9]+' <<< "$input"); do
    if [[ num eq -* ]]; then
    num=$((0 - num))

    fi
    sum=$((sum + num))

done

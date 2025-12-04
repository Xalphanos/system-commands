#~/bin/bash

lower=()
upper=()


while read -r name; do
    [ -z "$name"] && continue

    if [["$name" ~= [A-Z] ]]; then
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

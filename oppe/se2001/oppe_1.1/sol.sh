while IFS= read -r line; do
    username=$(printf "%s\n" "$line" | sed 's/:.*//')
    printf "%s\n" "$usename" | tr '[:upper:]' '[:lower:]'

done


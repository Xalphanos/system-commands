#!/usr/bin/env bash
# Demonstration of common sed workflows on the sample_data.txt fixture.
# Run from repository root: bash examples/sed_showcase.sh
#
# Tips while reading:
# - sed processes input line by line; an optional address (pattern or line number) can limit where a command applies.
# - Multiple commands can be separated by semicolons inside a single -e expression.
# - We avoid in-place edits on the original fixture to keep the examples repeatable.
set -euo pipefail

DATA_FILE="$(dirname "$0")/data/sample_data.txt"

if [[ ! -f "$DATA_FILE" ]]; then
  echo "Sample data missing at $DATA_FILE" >&2
  exit 1
fi

print_section() {
  printf "\n=== %s ===\n" "$1"
}

print_section "Original data"
cat "$DATA_FILE"

print_section "Rewrite department names (Engineering -> Eng, Marketing -> Mkt, Sales -> Sls)"
# -E enables extended regex, letting us avoid double-escaping braces.
# s/old/new/ replaces the first match per line; chaining multiple substitutions shows that sed executes left to right.
sed -E 's/Engineering/Eng/; s/Marketing/Mkt/; s/Sales/Sls/' "$DATA_FILE"

print_section "Display only lines matching numeric salary >= 70000"
# -n suppresses the default print. The /regex/p address+command pair prints only lines whose salary ends with five digits
# starting with 7-9. Anchoring with $ ensures we avoid matching earlier numbers in the line (like the ID).
sed -n '/ [7-9][0-9]{4}$/p' "$DATA_FILE"

print_section "Delete header comment lines and trailing blank lines"
# d deletes addressed lines. /^#/ targets the file header, /^$/ matches empty lines. Combining commands with semicolons lets
# us remove multiple patterns in one pass.
sed '/^#/d; /^$/d' "$DATA_FILE"

print_section "Numbered lines with custom formatting"
# The first sed prints line numbers by using the = command, which writes the number on its own line.
# Piping into a second sed that runs N; s/\n/: / joins each number with the following line using ": " as a separator.
# This mirrors `nl -ba` but shows how buffers can be manipulated manually.
sed = "$DATA_FILE" | sed 'N; s/\n/: '/

print_section "In-place edit example (writes to a temporary copy)"
# -i edits files in place. We copy the fixture to a temp file so you can rerun the script without losing the original data.
# The regex captures the leading numeric ID (\([0-9]\+\)) and reinserts it with a label to show backreferences.
tmp_copy=$(mktemp)
cp "$DATA_FILE" "$tmp_copy"
sed -i 's/\([0-9]\+\) /ID: \1 /' "$tmp_copy"
cat "$tmp_copy"
rm "$tmp_copy"

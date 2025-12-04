#!/usr/bin/env bash
# Demonstration of grep usage patterns on the sample_data.txt fixture.
# Run from repository root: bash examples/grep_showcase.sh
#
# What to notice:
# - Basic grep accepts basic regular expressions; -E enables extended regex with + and {} without backslashes.
# - Flags change behavior: -i for case-insensitive search, -v to invert matches, -n to show line numbers, -C for context.
# - Pattern files (-f) make it easy to bundle multiple searches without quoting headaches.
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

print_section "Simple substring search (names containing 'a')"
# -i makes the search case-insensitive so "Alice" and "dave" both match.
grep -i "a" "$DATA_FILE"

print_section "Regex search for salaries starting with 8"
# -E turns on extended regex so [0-9]{3,} works without escaping the braces.
# The leading space in the pattern keeps us anchored to the salary field rather than the ID.
grep -E ' [89][0-9]{3,}' "$DATA_FILE"

print_section "Invert match to exclude Sales department"
# -v flips the match, returning all lines that do NOT contain the string "Sales".
grep -v "Sales" "$DATA_FILE"

print_section "Count matching lines"
# -c prints only the number of matching lines, which is handy for quick summaries.
grep -c "Engineering" "$DATA_FILE"

print_section "Show line numbers and context"
# -n shows line numbers; -C 1 includes one line of leading and trailing context around each match.
# This is useful for seeing where the match occurs without opening the whole file.
grep -n "Marketing" -C 1 "$DATA_FILE"

print_section "Use patterns from a file"
# Creating a temporary file lets us try multiple patterns at once. Each line is treated as its own pattern.
# Here we find the comment line (^#), any ID starting with 2, and the exact name "Eve".
pattern_file=$(mktemp)
cat > "$pattern_file" <<'PATTERNS'
^#
^2
Eve
PATTERNS
grep -f "$pattern_file" "$DATA_FILE"
rm "$pattern_file"

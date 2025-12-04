#!/usr/bin/env bash
# Demonstration of awk text processing patterns on the sample_data.txt fixture.
# Run from repository root: bash examples/awk_showcase.sh
#
# Quick reminders:
# - awk splits each line into fields using FS (default whitespace). $1, $2, ... refer to fields; $0 is the full line.
# - Each "pattern { action }" block is evaluated in order. If the pattern matches (or is omitted), the action runs.
# - BEGIN and END blocks run once before and after all input, which is perfect for headers and summaries.
# - You can test different flows by adding a new pattern/action block and watching how it interacts with existing ones.
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

print_section "Parse fields and print custom report"
# NR is the current record (line) number. Skipping NR==1 avoids the header comment.
# printf gives precise control over alignment; %-5s means left-align in a 5-character column.
# Here we ignore the salary to show that you can choose any subset of fields.
# Try swapping $2 and $3 in the format string to see how column ordering changes.
# Fields: $1=id, $2=name, $3=department, $4=salary
awk 'NR>1 { printf "%-5s %-12s %-8s\n", $1, $2, $3 }' "$DATA_FILE"

print_section "Filter by department and compute average salary"
# This demonstrates combining a pattern (department equals Engineering) with an action that accumulates totals.
# The END block runs once to print the summary using the aggregates we built up.
# Notice that sum and count are created the first time they are used; awk variables default to 0 or empty strings.
# Change the department name or add another condition (like $4 > 60000) to see how filtering affects the aggregates.
awk '
  NR>1 && $3 == "Engineering" { sum += $4; count++ }
  END {
    printf "Engineering count: %d\n", count;
    if (count > 0) printf "Average salary: %.2f\n", sum / count;
  }
' "$DATA_FILE"

print_section "Demonstrate pattern + action to highlight high earners"
# Two patterns show branching: lines starting with # are skipped, and high earners (>= 70000) get a different label.
# The default action runs when no earlier pattern fires, letting us mark the remaining rows as "ok".
# Experiment with changing the threshold to 80000 or adding another branch to tag a specific department.
awk '
  /^#/ { next }
  $4 >= 70000 { printf "HIGH -> %s (%s) %s\n", $2, $3, $4; next }
  { printf "ok   -> %s (%s) %s\n", $2, $3, $4 }
' "$DATA_FILE"

print_section "Use BEGIN and END blocks to wrap output"
# BEGIN prints a header before any input is processed; END prints a footer after all lines are handled.
# NR>1 skips the comment line so the body only processes data rows.
# Add a counter inside the body and print it in END to see how state is carried across records.
awk '
  BEGIN { print "Report start" }
  NR>1 { printf "%s: %s\n", $2, $4 }
  END { print "Report complete" }
' "$DATA_FILE"

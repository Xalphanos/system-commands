# Text-processing tool showcases

<<<<<<< ours
This directory contains three standalone Bash programs that demonstrate practical uses of `sed`, `awk`, and `grep` with heavily commented examples. Each script reads the same `data/sample_data.txt` fixture and prints sectioned output so you can follow along with what each tool is doing.

## Files
- `data/sample_data.txt`: Structured sample data with a header comment, IDs, names, departments, and salaries.
- `sed_showcase.sh`: Substitutions, filtering, deletion, numbering, and safe in-place editing using `sed`.
- `awk_showcase.sh`: Field parsing, formatted reporting, aggregation, and BEGIN/END blocks with `awk`.
- `grep_showcase.sh`: Case-insensitive searching, regex usage, inverse matches, counts, context, and pattern files with `grep`.
=======
This directory contains three standalone Bash programs that demonstrate practical uses of `sed`, `awk`, and `grep` with heavily
commented examples. Each script reads the same `data/sample_data.txt` fixture and prints sectioned output so you can follow along
with what each tool is doing. The scripts are meant to be read like annotated tutorials: skim the inline comments, run the
examples, and edit them to experiment with different patterns.

## Files
- `data/sample_data.txt`: Structured sample data with a header comment, IDs, names, departments, and salaries. The first line is a
  comment so you can see how each tool handles non-data lines.
- `sed_showcase.sh`: Substitutions, filtering, deletion, numbering, and safe in-place editing using `sed`, with explanations of
  addressing, regex delimiters, and why to avoid editing fixtures directly.
- `awk_showcase.sh`: Field parsing, formatted reporting, aggregation, and BEGIN/END blocks with `awk`, including notes about field
  separators, record numbers, and how pattern/action blocks are evaluated.
- `grep_showcase.sh`: Case-insensitive searching, regex usage, inverse matches, counts, context, and pattern files with `grep`,
  plus tips on when to use basic vs. extended regular expressions.
>>>>>>> theirs

## Running the scripts
From the repository root:

```bash
bash examples/sed_showcase.sh
bash examples/awk_showcase.sh
bash examples/grep_showcase.sh
```

Each script validates the location of the sample data before running.
=======
Each script validates the location of the sample data before running. If you want to experiment, copy the sample data and adjust
patterns or flags to see how the output changes.

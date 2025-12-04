# Text-processing tool showcases

This directory contains three standalone Bash programs that demonstrate practical uses of `sed`, `awk`, and `grep` with heavily
commented examples. Each script reads the same `data/sample_data.txt` fixture and prints sectioned output so you can follow along
with what each tool is doing. The scripts are meant to be read like annotated tutorials: skim the inline comments, run the
examples, and edit them to experiment with different patterns.

If you are new to these tools, walk through the scripts in this order:

1. Run `sed_showcase.sh` to see how addresses, substitutions, and buffers work.
2. Move to `awk_showcase.sh` to practice field selection, formatting, and summaries.
3. Finish with `grep_showcase.sh` to compare plain string searches with regular expressions and context flags.

After each section, try editing the patterns (for example, change the salary threshold or add a new department) and rerun the
script to see how the output changes. Treat the files as a playground: break them, fix them, and observe how small changes alter
the results.

## Files
- `data/sample_data.txt`: Structured sample data with a header comment, IDs, names, departments, and salaries. The first line is a
  comment so you can see how each tool handles non-data lines.
- `sed_showcase.sh`: Substitutions, filtering, deletion, numbering, and safe in-place editing using `sed`, with explanations of
  addressing, regex delimiters, and why to avoid editing fixtures directly.
- `awk_showcase.sh`: Field parsing, formatted reporting, aggregation, and BEGIN/END blocks with `awk`, including notes about field
  separators, record numbers, and how pattern/action blocks are evaluated.
- `grep_showcase.sh`: Case-insensitive searching, regex usage, inverse matches, counts, context, and pattern files with `grep`,
  plus tips on when to use basic vs. extended regular expressions.

## Running the scripts
From the repository root:

```bash
bash examples/sed_showcase.sh
bash examples/awk_showcase.sh
bash examples/grep_showcase.sh
```

Each script validates the location of the sample data before running. If you want to experiment, copy the sample data and adjust
patterns or flags to see how the output changes.

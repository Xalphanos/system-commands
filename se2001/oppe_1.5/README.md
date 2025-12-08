# Linux OPPE Question - Question 5

## Problem Statement

You were taking notes for a statistics course, when reviewing your notes you
notice that for one experiment, the probability of the event $X$ happening is
given as $P(X)$ and is said to be:

> more probable than naught

However, you are not sure if you wrote it down correctly. It could also be:

> more probable than not

Thankfully you have a sample dataset to help you figure it out. The dataset
contains $1$ for each time the event $X$ happened, and $0$ for each time
it did not happen. The sample dataset is statistically significant.

Given the data, if the event $X$ is more probable than not, print `not`.
Otherwise, print `naught`.

## Instructions

- Write your solution in `script.awk` GNU Awk script file.
- The script should be executable by the `gawk` command.
- The input contains one number per line, either `0` or `1`.

The script will be executed as follows:

```bash
gawk -f script.awk < input.csv
```

## Sample Input

```text
1
1
1
1
1
1
1
0
0
0
```

## Sample Output

```text
not
```

## Constraints

- Do not expect any headers in the file.
- The file is LF (`\n`) terminated.
- The values are not quoted, and are always non-empty integers `0` or `1`.
- There is always at least one `1` in the input.
- The number of rows can vary, but there will always be at least one row.

## Hint

- "more probable than not" means the probability is greater than `0.5`.
- "more probable than naught" means the probability is greater than `0`.
- The probability of the event $X$ happening can be calculated as:

```text
P(X) = (number of times X happened) / (total number of trials)
```

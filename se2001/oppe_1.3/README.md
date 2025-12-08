# Linux OPPE Question - Question 3

## Motivation

A number is odd if it is not divisible by 2.

## Problem Statement

You are given a positive integer `n`. Print the sum of cubes of the odd numbers
from 1 to `n`, including `n` if it is odd.

Do this for `t` test cases, however stop taking inputs prematurely if any sum
is also odd.

## Instructions

- Write your solution in `script.sh` shell script file.
- The script should be executable.
- The script should read the number of test cases `t` from standard input.
- The script should read `t` positive integers `n` from standard input.
- The output should be one line with one number for each test case.
- If any computed sum is odd, the script should stop processing further inputs.

## Sample Input

```text
3
4
10
3
```

## Sample Output

```text
28
1225
```

## Explanation

There are a total of 3 test cases. For each test case, we calculate the sum of cubes of odd numbers from 1 to `n`.

1. For the first test case, `n = 4`:

   - Odd numbers from 1 to 4 are 1 and 3.
   - Their cubes are 1^3 = 1 and 3^3 = 27.
   - The sum is 1 + 27 = 28 (which is even).

2. For the second test case, `n = 10`:

   - Odd numbers from 1 to 10 are 1, 3, 5, 7, and 9.
   - Their cubes are 1^3 = 1, 3^3 = 27, 5^3 = 125, 7^3 = 343, and 9^3 = 729.
   - The sum is 1 + 27 + 125 + 343 + 729 = 1225 (which is odd).
   - Since the sum is odd, the script stops processing further inputs.

3. The third test case is not processed because the previous sum was odd.

## Constraints

- `t` is a positive integer.
- 1 <= t <= 100
- `n` is a positive integer.
- n <= 100

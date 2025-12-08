# Linux OPPE Question - Question 2

## Problem Statement

A file has multiple lines of text, each line being either a phone number, credit card number, or employee ID.
Each line follows a specific format:

```text
type:value
```

Where `type` and `value` can be one of the following:

- `phone`: A phone number in the format `XXX-XXX-XXXX`.
- `credit`: A credit card number in the format `XXXX-XXXX-XXXX-XXXX`.
- `employee`: An employee ID in the format `EMP-XXXX`.

Where `X` is a digit (0-9).

Print all lines where the `value` is a palindrome (including the dashes) for `credit` and `phone` type.

## Instructions

- Write your solution in `script.sh` shell script file.
- The script should read the input from standard input (`&0`).
- The output should be printed to standard output (`&1`).

## Sample Input

```text
phone:123-456-7890
phone:111-222-3333
credit:1234-5678-8765-4321
credit:1221-4334-4334-1221
credit:1111-2222-3333-4444
employee:EMP-1221
employee:EMP-4334
```

## Sample Output

```text
credit:1234-5678-8765-4321
credit:1221-4334-4334-1221
```

## Constraints

- The values follow the specified formats strictly.
- Only `phone` and `credit` types need to be checked for palindromes.
- Palindromes should include dashes in their evaluation.

# Linux OPPE Question - Question 4

## Motivation

In `sed`, we can perform powerful text transformations using simple commands.
It is particularly well-suited for processing log files,
where we often need to filter, modify, and reformat text.

### Print and Delete Lines

We can print a particular line addressed by a pattern using the `p` command,
similarly, we can delete lines using the `d` command.

### Substitution

The `s` command in `sed` allows us to substitute text.

```bash
sed 's/pattern/replacement/' input.txt
```

We can use regular expressions to match patterns and replace them with desired
text. We can also use capture groups to backreference matched text.

```bash
sed 's/\(pattern1\)\(pattern2\)/\2\1/' input.txt
```

### Addressing Lines

We can address lines using line numbers or patterns.

```bash
sed '2s/pattern/replacement/' input.txt
sed '/pattern/s/pattern/replacement/' input.txt
```

### Case Conversion

We can convert text to uppercase or lowercase using the
`\U` and `\L` escape sequences. These convert the entire match.

Similarly, we can use `\u` and `\l` to convert the first letter of the match.

```bash
sed 's/.*/\U&/' input.txt
sed 's/.*/\L&/' input.txt
```

## Problem Statement

You are given a file with lines in the following format:

```text
case:text
```

Where `case` is `low` or `up`. `text` is a string of characters.

Convert the `text` to lowercase if `case` is `low` and to uppercase if `case` is `up`.

Print only the `text` part after conversion.

## Instructions

- Write your solution in `script.sed` `sed` script format.
- The input is passed through standard input to the `sed` script.
- The output should be printed to standard output.

Your script is run as follows:

```bash
sed -Ef script.sed < input.log
```

## Sample Input

```text
low:This is a Low Case Message
up:This is an Up Case Message
```

## Sample Output

```text
this is a low case message
THIS IS AN UP CASE MESSAGE
```

### Constraints

- The input may contain multiple lines.
- Each input line is well-formed as per the specified format.
- The `text` may contain the following characters only: `[a-zA-Z ]`.

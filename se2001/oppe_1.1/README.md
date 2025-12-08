# Linux OPPE Question - Question 1

## Motivation

### Creating files and directories

We can create directories using the `mkdir` command and files using the
`touch` command.

`mkdir` by default creates only one level of directory. To create
nested directories, we can use the `-p` option.

## Problem Statement

Write a script named `create.sh` that reads folder names from standard input,
and creates those directories in the current working directory.

## Instructions

- Write your solution in `create.sh` shell script file.
- The script should read the input from standard input (`&0`).
- It should not print any output to stdout (`&1`) or stderr (`&2`).
- The files and folders should be created in the current working directory.

## Sample Input

```bash
hello/
world/
universe/
universe/mars/
```

## Sample File system post execution

```bash
> find . | sort -sf
.
./hello/
./universe/
./universe/mars/
./world/
```

## Constraints

- Current working directory may not be same as the location of the script, it
  is automatically set during the evaluation (`synchro eval`), so do not use
  absolute paths.
- The directories might be nested, in that case the parent directories
  should be created as well.

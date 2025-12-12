# Practice solution script for Problem2; see the embedded assignment notes.
:'
encoding-key is a file located at the path /encryption/two-level/binary/positive-offset/(directory 'encryption' is located in current working directory) . 
The file encoding-key is updated often and shared between multiple users. This file is important to you and you are worried that the file could be deleted by mistake.
Create a file ek in the current working directory, such that it is always in sync with the contents of file encoding-key and 
if encoding-key gets deleted by any chance the content in it should be available in file ek.
'

# Documentation:
# Purpose: Keep a backup `ek` always in sync with `encoding-key`.
# Inputs: File `/encryption/two-level/binary/positive-offset/encoding-key`.
# Output: A hard-linked file `ek` (here created at `/ek`) that mirrors the original.
# How it works:
# - Ensures the directory path and `encoding-key` exist (practice scaffolding).
# - Creates a hard link named `ek` pointing to `encoding-key`.
# - Because it's a hard link, both names refer to the same inode:
#   editing either updates the other, and deleting `encoding-key` does not lose data
#   as long as `ek` remains.
#Solution
script() {
mkdir -p /encryption/two-level/binary/positive-offset/
touch /encryption/two-level/binary/positive-offset/encoding-key
ln /encryption/two-level/binary/positive-offset/encoding-key /ek
}

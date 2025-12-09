#!/usr/bin/bash

# Print the SHA-256 digest (hex) of the file provided as the first argument.
sha256sum "$1" | cut -d" " -f1

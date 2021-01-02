#!/bin/bash

# the -> shows a symbolic link to a file
ls -l /usr/local/bin/python

# file

# with file, no ->; it shows the file type and other metadata about the file itself
file /usr/local/bin/python
file /usr/local/bin/python3

# symbolic links are like aliases for file names that link us to the files

man ln

# ln command, with -s tag, lets you set symbolic links
# advanced ln tutorial: https://www.youtube.com/watch?v=2PGnYjbYuUo&t=2285s


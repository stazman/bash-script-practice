#!/bin/bash

# the -> shows a symbolic link
ls -l /usr/local/bin/python


# no ->; it gives metadata about actual executable files
file /usr/local/bin/python
file /usr/local/bin/python3
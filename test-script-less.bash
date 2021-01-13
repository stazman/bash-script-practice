#!/bin/bash

#less command is for reading text files of many kinds, such as README.md and txt, in the console. It will show the contents of text files in a separate terminal space than any previous commands before it

# less README.md

# less test-text-file.txt

# opening more than one text file with less; then you can navigate back and forth between them with :n and :P

less *

# you can't run :n and :p as commands in a shell script because they only work within the editor

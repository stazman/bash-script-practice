#!/bin/bash

# These files are copied from .bash files placed in the Mac directory (root) /usr/local/bin because files need to be located in this exact directory for them to be executable

# Bash files are made executable by using chmod +x ~/usr/local/bin/<file> with the tilde (~) representing the root directory (while at the root directory level in Terminal/other code editor)

# On a Mac, bash scripts go in root: /usr/local/bin

# time related 

cal

date

# locating things

pwd

echo "Hello"

mkdir test-dir

# mkdir -p test-dir

cd test-dir

touch test-file.txt

cd ..

mkdir -v -p test-dir-parent/child

cd test-dir-parent

ls

cd child

touch child-file.txt

cd ..

pwd

ls ../test-dir






# man ls 

#man shows info about any command following in a separate terminal space than any previous commands before it


# exit 

#exit doesn't execute in a file of commands but does on command line
#!/bin/bash

## general bash info

  # The [] around a flag means that it is optional

  # ... after an option means that multiple are possible

  # These files are copied from .bash files placed in Mac directory (root) /usr/local/bin because files need to be located in this exact directory for them to be executable

  # Bash files are made executable by using chmod +x ~/usr/local/bin/<file> with the tilde (~) representing the root directory (while at the root directory level in Terminal/other code editor)

  # On a Mac, bash scripts go in root: /usr/local/bin

  # . means current directory

  ## .. means parent directory

# checks if files are identical

  # diff --report-identical-files test-file.txt ../test-dir-parent

## flags
##  -a includes hidden files
##  -i makes it interactive ... checking if really want to does
##  -v means verbose; gives longer syntax with more info
##  -l means long listing format
##  -h (with -l) means human-readable (more readable) format)
##  -r (with rm) means to delete a directory recursively (otherwise deleting directories is not allowed); -i will make you approve deletion of all files in directory to be removed

# sleep and a number will create a pause for the specified length of time (the default is seconds but there are options for other time measurements: s for seconds, m for minutes, h for hours, d for days, ex. 3s, 3m, 3h, 3d.


# Using Bash Commands:

# time related

cal

date

sleep 3


# locating things

pwd

echo "Hello"

mkdir test-dir

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


# using absolute path with ls

cd ..

ls /Users/christopher_distasio/AAA-Practice/bash-script-practice/test-dir-parent/child

ls -a /Users/christopher_distasio/AAA-Practice/bash-script-practice


ls -a -lh /Users/christopher_distasio/AAA-Practice/bash-script-practice
# same as ls -a -l -h /Users/christopher_distasio/AAA-Practice/bash-script-practice

cd ../..
# how to go up more than one level

pwd



# using absolute path with cd

cd /Users/christopher_distasio/AAA-Practice/bash-script-practice/test-dir-parent/child/

pwd


cd .././../././
# task: guess which directory you'll end up in

# See Answer in output:

pwd

cd test-dir-parent
cd child

pwd

rm -i -v child-file.txt

touch new-child-txt

ls

cd ..

pwd

# Use -r to remove directories, empty or not
rm -r -v child

pwd

cd
# with no options, go to home directory; the home directory is the default directory

pwd




# man ls

#man shows info about any command following in a separate terminal space than any previous commands before it

# exit

#exit doesn't execute in a file of commands but does on command line




# Ls (example for test-script-echo-grep.bash practice file)
# children (example for test-script-echo-grep.bash practice file)

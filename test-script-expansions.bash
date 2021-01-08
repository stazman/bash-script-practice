# Run this after running test-script-echo-grep.bash

# Expansion ... refers to the way the shell expands out the directory, reflecting how special characters work after echo

# works like ls
# the shell itself has expanded the directory out already, so the special character * is not returned
echo *

cd grep-test-dir
touch test.bash
cd ..

# Pathname Expansion

# ls (with absolute path, NOT relative path) and *.txt shows all files in the directory with .txt at end
ls /Users/christopher_distasio/AAA-Practice/bash-script-practice/grep-test-dir/*.txt

# ls (with absolute path, NOT relative path) and *.txt shows all files in the directory with test at beginning
ls /Users/christopher_distasio/AAA-Practice/bash-script-practice/grep-test-dir/test*


# Tilde Expansion

# ~<name of user>
# echo ~ (shows /home/<name of user>)
# echo ~ (shows directory of home user)


# Arithmetic Expansion

echo $((2+3))

echo $((2.0+3)) # doesn't work

# supports *, /, +, -, %, **

echo Using integer division, seven divided by two is $((7/2)) with a remainder of $((7%2))

echo $((2**5))

echo $(( 2**$((2+3)) )) # This works; don't let IDE coloring confuse you
#OR
echo $(( 2**(2+3) ))


# Bracket Expansion




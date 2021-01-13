# Run this after running test-script-echo-grep.bash

# Expansion ... refers to the way the shell expands out the directory, reflecting how special characters work after echo, for example

# works like ls
# the shell itself has expanded the directory out already, so the special character * is not returned
echo *

cd grep-test-dir
touch test.bash
cd ..

# Pathname Expansion

# ls (with absolute path, NOT relative path) and *.txt shows all files in the directory that have .txt at end
echo "With the wildcard expension * before the given pattern"
ls /Users/christopher_distasio/AAA-Practice/bash-script-practice/grep-test-dir/*.txt

# ls (with absolute path, NOT relative path) and *.txt shows all files in the directory with test at beginning
echo "With the wildcard expension * after the given pattern"
ls /Users/christopher_distasio/AAA-Practice/bash-script-practice/grep-test-dir/test*


# Tilde Expansion

# ~<name of user>
# echo ~ (shows /home/<name of user>)
# echo ~ (shows directory of home user)


# Arithmetic Expansion

echo $((2+3))

echo $((2.0+3)) # doesn't work ... must be integers

# supports *, /, +, -, %, **

echo Using integer division, seven divided by two is $((7/2)) with a remainder of $((7%2))

# Arithmetic Expansion can also work in a nested way:
echo $((2**5))

echo $(( 2**$((2+3)) )) # This works; don't let IDE coloring confuse you
#OR
echo $(( 2**(2+3) ))



# ---- Brace Expansion ----

# Brace Expansion lets you create multiple statements, phrases, etc. using variables passed through curly braces

# NOTE: Spacing is very important for brace expansion. Typically, there can be no space outside of strings with quotation marks for brace expansion, at all, for it to make the desired result.

# Note: For brace expansion to work, there can be no spaces unless they're escaped ... or the whole expression is not read as one unit

# form: preamble${expansion}postscript

# Note: Can't have spaces between terms for it to work

#

echo {_1,_2,_3}

echo abc{_1,_2,_3}xyz

echo "A sea surrounding Turkey is the "{Marmara,Aegean,Mediterranean,Black}" Sea".
# Note: you have to put the end quotation mark directly before the braces; eg,
echo "A sea surrounding Turkey is the" {Marmara,Aegean,Mediterranean,Black} "Sea".

# Using a range of numbers or letters:
echo {1..5}

echo {5..1}

# with leading zeroes ... may or may not work
echo {01..05}

echo {05..01}

echo {00001..000005}

echo {00005..000001}

echo {a..z}

echo {z..a}

echo "This is sentence Number "{1..5}.

echo "This is "{a..z}.

echo "This is "{z..a}.


# ---- Nested brace expansion ----

echo pre{A{1,2},B{1,2}}post


# Expansions are not just useful for echo ...

mkdir monthly-dirs 

cd monthly-dirs

mkdir {2000..2005}-{01..12}


# This is called parameter substitution:

echo "${USER}"



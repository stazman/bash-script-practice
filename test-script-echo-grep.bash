# echo default behavior - one line

echo Hello, World
echo "Hello, World" # --> same result; better choice

# echo with and without preserving number of spaces

echo Hello      World  # doesn't preserve spaces
echo "Hello      World" # preserves spaces

# multi-line -- leave off the final quotation mark
# (Note: this comes up as an error if included in a script like this rather than being entered specifically on the command line)

# echo "Hello, World --> will cause > symbols with new lines until you end it with a quotation mark

# > This is the common thing.
# > I could go on forever.
# > But I promise I will stop.
# > "


# Use this command; echo is special and you can see a short list of escape characters (in addition to usual man command for manual pages functionality)

help echo


# Using echo to display messages with functioning (not literal) escape characters, eg., \t and \n

echo -e "Hello, World\tHere I am"

echo -e "Hello, World\t\t\tHere I am"

echo -e "Hello, World\nHere I am"

echo -e "Hello, World\n\n\nHere I am"


# grep

# Linux grep command options
# -i	Ignore case distinctions on Linux and Unix
# -w	Force PATTERN to match only whole words
# -v	Select non-matching lines
# -n	Print line number with output lines
# -h	Suppress the Unix file name prefix on output
# -r	Search directories recursively on Linux
# -R	Just like -r but follow all symlinks
# -l	Print only names of FILEs with selected lines
# -c	Print only a count of selected lines per FILE
# --color	Display matched pattern in colors


# to show all instances of a substring in a specific file
# A capitalized Ls is located in test-script-basic-commands.bash
grep the -w test-script-basic-commands.bash
grep "the" -w test-script-basic-commands.bash

# the capitalized The shows up upon execution of the following commands and not the previous ones
# because of the -i flag

# Without -w: 
grep -i the test-script-basic-commands.bash

grep -i -w "the" test-script-basic-commands.bash
# Note: without -w and with -i, the results will include These because it's capitalized and contains the letters the

# multiple files
grep ls test-script-basic-commands.bash test-script-mv-cp.bash


# finds substring in files in current directory

pwd

mkdir grep-test-dir
cd grep-test-dir
touch ls-file-1.txt
mkdir grep-test-dir-child-dir
touch ls-file-2.txt

# adds text to a file from the command line:
echo "This is a grep test to search for occurrences of ls in the current directory and subdirectories." >> ls-file-1.txt

cd ..

pwd

# finds substring in files in current directory and subdirectories
grep -R 'ls' .
grep -hR 'ls' . # no file names

# counts occurrences of substring
grep -c 'ls' test-script-echo-grep.bash
grep -c 'ls' test-script-basic-commands.bash

# search for whole word and not all words containing the same letter pattern
grep 'child' test-script-basic-commands.bash

# note that "children" isn't shown here because -w only returns whole words
grep -w 'child' test-script-basic-commands.bash

# shows line numbers
grep -n 'ls' test-script-basic-commands.bash

# search lines with multiple words or phrases in a file ... a pipe separates each word/phrase in a single string; apparently unlimited number of words/phrases can be searched for this way
egrep 'means|Using Bash Commands' test-script-basic-commands.bash
egrep 'human-readable|Using Bash Commands|chmod' test-script-basic-commands.bash


# inverse match ... retrieves all lines in which words/phrases are NOT found
grep -v 'ls' test-script-basic-commands.bash
egrep -v 'cd|ls' test-script-basic-commands.bash

# lines (with optional number parameter) before and after matches
grep -B 1 -A 1 'listing' test-script-basic-commands.bash

# listing just file names that contain a specific substring
grep -l -h "ls" *

# or for files in a subdirectory/subdirectories
grep -Rl "ls" * 

pwd 

# to highlight substring in red
grep --color "ls" test-script-basic-commands.bash

# this will give a 1 at the end of the file name if the file contains the letters ls within it:
rep -c -Rl "ls" *


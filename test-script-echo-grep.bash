# echo default behavior - one line

echo Hello, World
echo "Hello, World" # --> same result; better choice


# multi-line -- leave off the final quotation mark
# (Note: this comes up as an error if included in a script like this rather than being entered specifically on the command line)

# echo "Hello, World --> will cause > symbols with new lines until you end it with a quotation mark

# > This is the common thing.
# > I could go on forever.
# > But I promise I will stop.
# > "


# Use this command; echo is special and you can see a short list of escape characters (in addition to usual man command for manual pages functionality)

help echo


# Using echo to display messages with escape characters, eg., \t and \n

echo -e "Hello, World\tHere I am"

echo -e "Hello, World\t\t\tHere I am"

echo -e "Hello, World\nHere I am"

echo -e "Hello, World\n\n\nHere I am"


# grep

# to show all instances of a substring in a specific file
# Echo (echo with uppercase letter not included in results)
grep ls test-script-basic-commands.bash
grep "ls" test-script-basic-commands.bash

grep -i ls test-script-basic-commands.bash
grep -i "ls" test-script-basic-commands.bash
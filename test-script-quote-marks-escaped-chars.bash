# ---- Single and Double Quotation Marks; Advanced Escaped Characters ----

# Essentially, for code that contains white spaces to work as one token, the white space needs to be mitigated with backslashes or quotation marks

# Escaped Characters

# backslash by itself actually maintains the spacing in the command without it having to be inside a string:

echo Guns and Roses

echo Guns    and     Roses

echo Guns\ and \Roses

echo Guns\      and       \Roses


# The following works because the two pieces being connected by backslashes then spaces makes this one long token. The backslash must immediately follow character/s for anything after them to become part of one token; simply a space will not glue the pieces together:

echo Guns\ \ \ \ and \ \ \ \ Roses

# So this still works even though the prefix is not directly before the brace expansion because the space after the final backslash makes two pieces part of the same token:

echo Guns\ and\ {Roses,Ammo,Beam}

# When you need to have spaces in the names of things and need them to work as one token:

# Two ways:

# 1. Using escaped space

mkdir spacy-example

cd spacy-example

echo $(touch my\ spacy\ file.bash)

ls -l

# 2. Using double quotation marks, without escaped spaces

touch "spacy file 2.bash"


# Some characters that allow special funcionality, i.e. some kinds of expansions and substitutions, will not have their special functionality inside of double quotation marks:

echo "* (wildcard expansion), ~ (tilde expansion), &, {brace expansion}"

echo "~/*.txt"

echo ~/*.txt

echo pre{A,B}post

echo {2..9}

echo "pre{A,B}post"

echo "{2..9}"


# Some characters that allow special functionality, i.e. some kinds of expansions and command substitutions, are required to be in double quotations:

echo "$ ${parameter substitution} $((arithmetic expansion)) $(command substitution)" # results in errors because is without appropriate content

# These both result in errors below because they're not in strings:

echo $USER ${USER}

echo $((3*4))


# But these all work, in one command line, shown as one continuous result

echo "$USER ${USER} $((3*4)) $(file test-text-file-1.txt) $(ls) $(date) $(time) $(cal)"


# ---- Single Quotes vs. Double Quotes ----

# Double quotes

echo "$USER ${USER} $((3*4)) $(file test-text-file-1.txt) $(ls) $(date) $(time) $(cal)"

# Single quotes

echo '$USER ${USER} $((3*4)) $(file test-text-file-1.txt) $(ls) $(date) $(time) $(cal)'

# With single quotes, ALL expansions and substitutions are suppressed, both those that need to be in double quotation marks or not; ONLY literal characters are shown

# However, spacing is preserved as it is with double quotations:

echo Hello,                      World!

echo "Hello,                      World!"

echo 'Hello,                      World!'

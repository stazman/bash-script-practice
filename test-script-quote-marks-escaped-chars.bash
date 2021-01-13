# Single and Double Quotation Marks; Advanced Escaped Characters


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

touch my\ spacy\ file.bash

ls -l

# 2. Using double quotation marks, without escaped spaces

touch "spacy file 2.bash"


# ---- Single Quotes vs. Double Quotes ----

# Single quotes around 


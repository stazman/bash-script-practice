# Command substitutions are like nested queries in SQL. It seems correct to call them nested commands because they involve a command execution within a command execution.

# Command substitutions allow output to be used as an argument

# Syntax: $(); not ${}, which is done in arithmetic expansion but not with command substitution

mkdir command-substitution-examples

cd command-substitution-examples

touch a-command-substitution-example-file.txt
touch b-command-substitution-example-file.txt
touch c-command-substitution-example-file.txt

touch command-substitution-example-file-1.txt
touch command-substitution-example-file-2.txt
touch command-substitution-example-file-3.txt

ls

echo $(ls)

cd ..

# This substitution allows the user to retrieve the long listing format of the directory
ls -l $(which command-substitution-examples)


# ---- Making a Pipeline ----

# ... is different than command substitution:

# Pipelines allow output to be used as input within the same command line


# For example, the pipeline below pipes the output of sort to the argument of ls: 

echo ls | sort


echo sort | ls





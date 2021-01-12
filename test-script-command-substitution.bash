# Command substitutions are like nested commands in SQL. You could call the substitution a pipeline

# Syntax: $(); not ${}, such as arithmetic expansion

mkdir command-substitution-example

cd command-substitution-example

touch command-substitution-example-file.txt

ls

echo $(ls)




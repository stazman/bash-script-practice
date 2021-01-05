# after running test-script-basic-commands.bash

# have to have two arguments to use mv

cd /Users/christopher_distasio/AAA-Practice/bash-script-practice/test-dir-parent/

pwd

touch test-child-file.txt

cd ..

pwd

mv -v test-dir/test-file.txt ./test-dir-parent
# the /test-dir was needed for test-file.txt but ./ is not needed in front of test-dir-parent because test-dir and test-dir-parent are siblings; however ./ (and not just /) will also work

cd test-dir-parent

pwd

ls

mv test-child-file.txt test-file.txt ../test-dir
# moving multiple files

cd ../test-dir/

pwd

ls

echo $HOME

pwd
# echo $HOME just shows you what current user is; it doesn't take you to the user home directory

ls ~

pwd

# the tilde itself represents the home directory of the current user and ls ~ will show the contents
# of the current user's home directory
# use ~<username> to cd or ls a specific user's home directory if there are multiple users involved

cd ~/documents

ls

# use ~/<file/folder name after the current user's username eg. User/christopher_distasio/<file/folder name> to access folders/files in the current user's home directory directly

# note that with the tilde you never have to even use the username if you are only working within the current user's directory

# cp

# Two arguments -- path of file to be copied and path of the directory the file is to be copied to

# single file copy:
cd /Users/christopher_distasio/AAA-Practice/bash-script-practice/test-dir/

#does not do multiple files recursively in a directory the way mv does

cp test-file.txt ../test-dir-parent

ls


# checks if two files are identical
diff --report-identical-files test-file.txt ../test-dir-parent


# as with mv, cp doesn't copy directories by default, and you use the -r (recursive) flag to copy directories
cd ..

cp -r test-dir test-dir-parent

cd test-dir-parent

ls

cd ..

mv test-dir-parent test-dir
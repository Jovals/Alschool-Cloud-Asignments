# BASH SCRIPT ASSIGNMENT

## Question
1. Write a shell script that checks the disk usage in a given directory, the script cn take 2 optional arguments and one compulsory argument...

-d which means that all files and directory witin the specified directory or directories should be listed
-n which means that the top N entries should be returned. 
list of directories: this will be the directory you want to check it's disk usage

eg yourscript.sh -n 5 /var
should return the top 5 directories with respect to disk usage in the /var directory

yourscript.sh -d /var
should list both directories and files

Note: if -n argument i not given, it should return 8 entries by default

2. Create a backup script. This Script creates a backup of a given directory and saves it in another directory with a timestamp. it takes two arguements:
the source directory and the destination directory

Note: The backup should be a tar archive. 
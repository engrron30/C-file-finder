#!bin/bash

PGM_NAME="C Finder"
AUTHOR="ronros"
FUNCTION="Outputs the C file within a directory details including its name, author and permissions."

echo "(1) Program Name:\t$PGM_NAME"
echo "(3) Name:\t\t$AUTHOR"
echo "(3) Function:\t\t$FUNCTION"
echo "\n---------------------------------------------------------------------------------------"

echo "C files are shown below:"
ls -l | grep *.c | awk '{print "File Name:\t"$9	"\nAuthor:\t\t" $3	"\nPermissions:\t" $1}'

DUMMY_VAR_1=$(ls -l | grep *.c | awk '{print "Permissions:\t" $1}' )

echo "\n---------------------------------------------------------------------------------------"
echo "Script is done!\n\n"

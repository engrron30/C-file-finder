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

OWNER_COMMAND=$(ls -l | grep *.c)
OWNER_PERMSN=$($COMMAND_1)

OWNER_READ=$(	echo $OWNER_COMMAND | 	awk '{print substr($1, 2, 1)}')
OWNER_WRITE=$(	echo $OWNER_COMMAND | 	awk '{print substr($1, 3, 1)}')
OWNER_EXEC=$(	echo $OWNER_COMMAND | 	awk '{print substr($1, 4, 1)}')

echo "\nFile Permissions for Owner:"
echo "Read:\t\t$OWNER_READ"
echo "Write:\t\t$OWNER_WRITE"
echo "Execute:\t$OWNER_EXEC"

echo "\n---------------------------------------------------------------------------------------"
echo "Script is done!\n\n"

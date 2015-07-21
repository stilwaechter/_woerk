#!/bin/sh

FILE="pass.txt"
PWD="$(pwd)"

# Ask for project
echo "Type the project:"

# Read input for project
read PROJECT

# Ask if the given name is right
echo "\"$PROJECT\" is ok? (y/n)"

# Read the answer
read ANSWER

# Create file if the given answer is "y" else return text
if echo "$ANSWER" | grep -iq "^y"; then

    # Remove existing file

    rm $FILE &> /dev/null

    # Generate pass.txt
    touch $FILE

    # Fill pass.txt
    echo "PASS FILE FOR:" >> $FILE
    echo "\"$PROJECT\"" >> $FILE
    echo "" >> $FILE
    echo "USERS:" >> $FILE
    echo "root" >> $FILE
    sleep 1
    date | md5 >> $FILE
    echo "" >> $FILE
    echo "user" >> $FILE
    sleep 1
    date | md5 >> $FILE
    echo "" >> $FILE
    echo "user" >> $FILE
    sleep 1
    date | md5 >> $FILE
    echo "" >> $FILE
    echo "DB HOST:" >> $FILE
    echo "localhost:3306 or localhost:/tmp/mysql5.sock" >> $FILE
    echo "" >> $FILE
    echo "DB NAME:" >> $FILE
    echo "" >> $FILE
    echo "" >> $FILE
    echo "DB USER:" >> $FILE
    echo "" >> $FILE
    echo "" >> $FILE
    echo "DB PASSWORD:" >> $FILE
    echo "" >> $FILE
    echo "" >> $FILE
    echo "FTP HOST:" >> $FILE
    echo "127.0.0.1" >> $FILE
    echo "" >> $FILE
    echo "FTP NAME:" >> $FILE
    echo "" >> $FILE
    echo "" >> $FILE
    echo "FTP USER:" >> $FILE
    echo "" >> $FILE
    echo "" >> $FILE

    # Positive response
    echo "\033[0;32mFile has been created.\033[0m"

else

    # Negative response
    echo "\033[0;31mSetup has been aborted.\033[0m"

fi

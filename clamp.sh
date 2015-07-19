#!/bin/sh

FILE="clamp.json"

IP="$(ipconfig getifaddr en0)"

# Ask for hostname
echo "Type the hostname (without hostname.$IP.xip.io):"

# Read input for hostname
read HOST

# Ask for database name
echo "Type the name for the database:"

# Read input for database
read DATABASE

# Ask if the given name is right
echo "\"$HOST\" \"$DATABASE\" is ok? (y/n)"

# Read the answer
read ANSWER


# Create file if the given answer is "y" else return text
if echo "$ANSWER" | grep -iq "^y"; then

    # Generate clamb.json
    touch $FILE

    # Fill clamb.json
    echo "{" >> $FILE
    echo "\t\"address\": \"$HOST.$IP.xip.io\"," >> $FILE
    echo "\t\"memory\": \"256M\"," >> $FILE
    echo "\t\"database\": \"$DATABASE\"" >> $FILE
    echo "}" >> $FILE

    # Positive response
    echo "\033[0;32mConfiguration is done.\033[0m"

else

    # Negative response
    echo "\033[0;31mConfiguration has been aborted.\033[0m"

fi

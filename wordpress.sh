#!/bin/sh

# Download latest wordpress
wget http://wordpress.org/latest.tar.gz &> /dev/null

# Unpack the package
tar xfz latest.tar.gz

# Remove package
rm latest.tar.gz

# Move files in current directory
mv ./wordpress/* ./

# Remove wordpress folder
rm -rf wordpress

# Return response
echo "\033[0;32mWordpress should be downloaded and extracted.\033[0m"

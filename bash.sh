#!/bin/bash

# Echo commands
echo "Running Ruby code..."
ruby bib_to_json.rb

echo "Running Jekyll..."
bundle update
jekyll build

# Uncomment the following lines if you need to clear the screen
# clear

# Uncomment the following lines if you want to prompt for username and upload files using scp
 echo "Enter username and password to upload files to Website"
 read -p "Enter your username: " username
 scp -r _site/* "$username"@webserv3.rz.uni-jena.de:web/

# Static username version
# scp -r _site/* atthdanishfurkh@webserv3.rz.uni-jena.de:web/
echo "All commands executed."

# Wait for a keypress
read -p "Press any key to continue..."

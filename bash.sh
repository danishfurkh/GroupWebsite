#!/bin/bash

# Check for Ruby
if ! command -v ruby &> /dev/null
then
    echo "Ruby could not be found. Installing Ruby..."
    sudo apt-get install ruby-full
    # On macOS with Homebrew, you might use: brew install ruby
    # Adjust the installation command according to your OS or exit the script
    exit 1
fi

# Check for Jekyll
if ! gem list jekyll -i > /dev/null 2>&1
then
    sudo gem install jekyll bundler
fi

# Echo commands
echo "Running Ruby code..."
ruby bib_to_json.rb

echo "Running Jekyll..."
bundle update
jekyll build

# Uncomment the following lines if you need to clear the screen
#clear

# Uncomment the following lines if you want to prompt for username and upload files using scp
echo "Enter username and password to upload files to Website"
read -p "Enter your username: " username
scp -r _site/* "$username"@webserv3.rz.uni-jena.de:web/

# Static username version
# scp -r _site/* atthdanishfurkh@webserv3.rz.uni-jena.de:web/
echo "All commands executed."

# Wait for a keypress
read -p "Press any key to continue..."

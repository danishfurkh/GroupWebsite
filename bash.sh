#!/bin/bash

# Initialize error flag as false
error_occurred=false

# Check for Ruby
if ! command -v ruby &> /dev/null; then
    echo "Ruby could not be found. Installing Ruby..."
    sudo apt-get install ruby-full
    # On macOS with Homebrew, you might use: brew install ruby
    # Adjust the installation command according to your OS or exit the script
    echo "Please run the script again"
    error_occurred=true
else
    # Check for Jekyll
    if ! gem list jekyll -i > /dev/null 2>&1; then
        echo "Jekyll could not be found. Installing Jekyll..."
        sudo gem update --system
        sudo gem install jekyll bundler
        sudo apt-get install build-essential ruby-dev
        echo "Please run the script again"
        error_occurred=true
    fi
fi

# If no errors occurred so far, continue with the script
if [ "$error_occurred" = false ]; then
    # Echo commands
    echo "Running Ruby code..."
    if ! sudo gem install bibtex-ruby; then
        error_occurred=true
    fi
    
    if [ "$error_occurred" = false ]; then
        if ! ruby bib_to_json.rb; then
            error_occurred=true
        fi
    fi
    
    if [ "$error_occurred" = false ]; then
        echo "Running Jekyll..."
        if ! sudo bundle update; then
            error_occurred=true
        fi
    fi
    
    if [ "$error_occurred" = false ]; then
        if ! sudo jekyll build; then
            error_occurred=true
        fi
    fi
    
    # Only clear the screen and update the website if there have been no errors
    if [ "$error_occurred" = false ]; then
        clear
        echo "Enter username and password to upload files to Website"
        read -p "Enter your username: " username
        scp -r _site/* "$username"@webserv3.rz.uni-jena.de:web/
        echo "Website updated successfully."
    else
        echo "An error occurred. Please fix the error and run the script again."
    fi
else
    echo "An error occurred during initial checks. Please fix the error and run the script again."
fi

# Wait for a keypress
read -p "Press any key to continue..."

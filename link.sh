#!/bin/bash

# Use the current directory as the vimrc_directory
vimrc_directory=$(pwd)

# Use the current directory as the bashrc_directory
bashrc_directory=$(pwd)

# Check if the .vimrc file exists in the current directory
if [ -f "$vimrc_directory/.vimrc" ]; then
    # Remove the existing .vimrc in the user's home directory if it exists
    [ -f "$HOME/.vimrc" ] && rm "$HOME/.vimrc"

    # Create a symbolic link in the user's home directory
    ln -s "$vimrc_directory/.vimrc" "$HOME/.vimrc"
    echo ".bash_profile Symbolic link created successfully!"
else
    echo "Error: .vimrc file not found in the current directory."
    exit 1
fi

# Check if the .bash_profile file exists in the current directory
if [ -f "$bashrc_directory/.bash_profile" ]; then
    # Remove the existing .bash_profile in the user's home directory if it exists
    [ -f "$HOME/.bash_profile" ] && rm "$HOME/.bash_profile"

    # Create a symbolic link in the user's home directory
    ln -s "$bashrc_directory/.bash_profile" "$HOME/.bash_profile"
    echo ".bash_profile Symbolic link created successfully!"
else
    echo "Error: .bash_profile file not found in the current directory."
    exit 1
fi

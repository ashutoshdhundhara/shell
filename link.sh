#!/bin/bash

# Use the current directory as the vimrc_directory
vimrc_directory=$(pwd)

# Check if the .vimrc file exists in the current directory
if [ -f "$vimrc_directory/.vimrc" ]; then
    # Remove the existing .vimrc in the user's home directory if it exists
    [ -f "$HOME/.vimrc" ] && rm "$HOME/.vimrc"

    # Create a symbolic link in the user's home directory
    ln -s "$vimrc_directory/.vimrc" "$HOME/.vimrc"
    echo "Symbolic link created successfully!"
else
    echo "Error: .vimrc file not found in the current directory."
    exit 1
fi


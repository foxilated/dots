#!/bin/bash

# Define the directory
directory="$HOME/stuff/code"

# Get the list of directories in the specified directory
directories=$(ls "$directory")

# Use dmenu to select a directory
selected_directory=$(echo "$directories" | dmenu)

# Check if the selection is not empty
if [ -n "$selected_directory" ]; then
    # Combine the directory path
    selected_path="$directory/$selected_directory"

    # Open the selected directory in Visual Studio Code
    code "$selected_path"
fi


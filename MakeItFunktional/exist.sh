#!/bin/bash
echo "Enter the name of the file, whose existence you want to check:"
read filename
if [ -e $filename ]; then
    
    echo "Filename: $filename"
    if [ -f "$filename" ]; then
        echo "Type: Regular File"
    elif [ -d "$filename" ]; then
        echo "Type: Directory"
    else
        echo "Type: Other"
    fi
    permissions=$(stat -c %A "$filename")
    echo "Permissions: $permissions"
else
    echo "The file or directory does not exist."
fi
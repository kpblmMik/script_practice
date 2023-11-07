#!/bin/bash

read -p "Enter a string: " user_string

reversed_string=$(echo "$user_string" | rev)

echo "Reversed string: $reversed_string"

#!/bin/bash

# Ask the user to choose the initial image format
echo "Choose the initial image format to convert:"
echo "1. PNG"
echo "2. JPG"
echo "3. WEBP"

read -p "Enter the corresponding number (1, 2, or 3): " initial_format_choice

case $initial_format_choice in
    1) initial_format="png";;
    2) initial_format="jpg";;
    3) initial_format="webp";;
    *) echo "Invalid choice. Please enter a valid number (1, 2, or 3)."; exit 1;;
esac

# Ask the user to choose the new image format
echo "Choose the new image format:"
echo "1. PNG"
echo "2. JPG"

read -p "Enter the corresponding number (1 or 2): " new_format_choice

case $new_format_choice in
    1) new_format="png";;
    2) new_format="jpg";;
    *) echo "Invalid choice. Please enter a valid number (1 or 2)."; exit 1;;
esac

# Ask the user to input the directory
read -p "Please enter the directory path: " directory

# Validate if the directory exists
if [ ! -d "$directory" ]; then
    echo "The directory does not exist. Please enter a valid path."
    exit 1
fi

# Change to the specified directory
cd "$directory" || exit 1

# Convert images based on user choices
find . -type f -name "*.$initial_format" -exec sh -c 'convert "$1" "${1%.*}.$new_format" && rm "$1"' _ {} \;

echo "Conversion completed."

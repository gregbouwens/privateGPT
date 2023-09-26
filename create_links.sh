#!/bin/bash

# Name of the file containing the list of documents
INPUT_FILE="discovered_files.txt"

# Directory to create symbolic links in
LINK_DIR="source_documents"

# Check if the input file exists
if [ ! -f "$INPUT_FILE" ]; then
    echo "Error: $INPUT_FILE not found!"
    exit 1
fi

# Create the directory if it doesn't exist
mkdir -p "$LINK_DIR"

# Read the file and create symbolic links
while IFS= read -r file_path; do
    # Extract the filename from the full path
    file_name=$(basename "$file_path")

    # Create the symbolic link
    ln -s "$file_path" "$LINK_DIR/$file_name"
done < "$INPUT_FILE"

echo "Symbolic links created in $LINK_DIR"
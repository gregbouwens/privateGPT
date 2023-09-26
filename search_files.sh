#!/bin/bash

# Check if directory is supplied
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <directory_path>"
    exit 1
fi

DIRECTORY="$1"

# Extensions from LOADER_MAPPING
EXTENSIONS=(
    ".csv"
    ".docx"
    ".doc"
    ".enex"
    ".eml"
    ".epub"
    ".html"
    ".md"
    ".odt"
    ".pdf"
    ".ppt"
    ".pptx"
    ".txt"
)

# Search for files with matching extensions
for ext in "${EXTENSIONS[@]}"; do
    find "$DIRECTORY" -type f -name "*$ext"
done
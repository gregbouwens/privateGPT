#!/bin/bash

# Check if directory is supplied
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <directory_path>"
    exit 1
fi

DIRECTORY="$1"
OUTPUT_FILE="discovered_files.txt"

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

# Empty or create the output file
> "$OUTPUT_FILE"

# Search for files with matching extensions
for ext in "${EXTENSIONS[@]}"; do
    find "$DIRECTORY" -type f -name "*$ext"
done | sort >> "$OUTPUT_FILE"

echo "Results saved to $OUTPUT_FILE"

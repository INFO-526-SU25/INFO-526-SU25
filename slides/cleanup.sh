#!/bin/bash
# cleanup.sh - remove generated HTML and _files directories

echo "Cleaning up .html files and _files folders in $(pwd)..."

# Remove HTML files
find . -type f -name "*.html" -print -delete

# Remove _files or '_files 2' folders
find . -type d \( -name "*_files" -o -name "*_files 2*" \) -print -exec rm -rf {} +

echo "Cleanup complete."

#!/bin/bash

# Check if repos.txt file exists
if [ ! -f repos.txt ]; then
    echo "Error: repos.txt file not found!"
    exit 1
fi

# Loop through each line in repos.txt and clone the repository
while IFS= read -r repo_url; do
    # Check if the URL is not empty
    if [[ -n "$repo_url" ]]; then
        echo "Cloning $repo_url ..."
        git clone "$repo_url"
    fi
done < repos.txt

echo "All repositories have been cloned!"

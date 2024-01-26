#!/bin/bash

# Check if at least one repository name is provided
if [ $# -eq 0 ]; then
    echo "No repository names provided."
    echo "Usage: $0 <repo1> [<repo2> ...]"
    exit 1
fi

# Base URL for the user's repositories
BASE_URL="https://github.com/omarhosny206"

# Loop through each provided repository name
for repo in "$@"; do
    # Form the full repository URL
    REPO_URL="$BASE_URL/$repo.git"

    # Clone the repository
    echo "Cloning $repo from $REPO_URL..."
    git clone "$REPO_URL"
done

echo "Cloning completed."

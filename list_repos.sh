#!/bin/sh 

# Generate list with the name of your first 100 repositories, you can adjust it
# if you have more.
which jq || brew install jq

# Local .env
if [ -f .env ]; then
    # Load Environment Variables
    export $(cat .env | grep -i 'USER' | awk '/=/ {print $1}')
fi

curl "https://api.github.com/users/${USER}/repos?per_page=100&page=1" \
| jq -r '.[] | .name' > repos.txt
#!/bin/sh 
 
# Delete a bunch of GitHub repos

#Declare repos list, as there isn't really a good way to encode an array variable into the environment.
REPOS="repo1 repo2"

# Local .env
if [ -f .env ]; then
    # Load Environment Variables
    export $(cat .env | grep -v '#' | awk '/=/ {print $1}')
fi

for repo in $REPOS 
do 
    echo "Ixnay on the eporay! https://github.com/$USER/$repo" 
    curl -v -u "$USER:$TOKEN" -X DELETE \
       "https://api.github.com/repos/$USER/$repo" 
done
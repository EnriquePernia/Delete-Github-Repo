# Delete-Github-Repo

## Info

This scripts allow you to use GitHub API to delete multiple repositories at a time.

## How to use:

- Create a .env file with:
  - USER=< Your GitHub username >
  - TOKEN=< Your GitHub token>
- If you know the name of the repos you want to delete, just write them down to REPOS var in delete_repos.sh and execute the script.
- If you want a list of your repos before writing them down to delete_repos.sh, execute list_repos.sh, a repos.txt file should be generated with the name of your repos, you can copy them and paste on the REPOS var in delete_repos.sh.
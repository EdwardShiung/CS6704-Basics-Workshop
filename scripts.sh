#!/bin/bash

# retrive name data from github
data_repos=$(./githubapi-get.sh $GITHUBTOKEN /users/EdwardShiung/repos | grep '"name":' | sort)
# retrive commits data from github
data_commits=$(./githubapi-get.sh $GITHUBTOKEN /repos/CS6704-VT/Basics-Workshop/commits | grep '"message":')


# Organize date to JSON
# Begin
echo "{" > repos.json
echo $data_repos | while IFS= read -r line;

do
    echo "  $line" >> repos.json
done
# End
echo "}" >> repos.json


# Organize date to JSON
# Begin
echo "{" > commits.json
echo $data_commits | while IFS= read -r line;

do
    echo "  $line" >> commits.json
done
# End
echo "}" >> commits.json
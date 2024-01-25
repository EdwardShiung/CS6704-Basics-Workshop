#!/bin/bash

# retrive name data from github
data_repos=$(./githubapi-get.sh $GITHUBTOKEN /users/EdwardShiung/repos | grep '"name":' | sort)
echo $data_repos > repos.json

# retrive name data from github
data_commits=$(./githubapi-get.sh $GITHUBTOKEN /repos/CS6704-VT/Basics-Workshop/commits | grep '"message":')
echo $data_commits > commits.json
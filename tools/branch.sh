#!/bin/bash
#USAGE: ./branch project 'fromBranch' 'toBranch'

# Change repositories to the project
cd ~/git/$1

# Go into the branch to copy from and pull the files
git checkout $2
git pull
sleep 1

# Create the new branch
git checkout -b $3
git push origin $3
sleep 1

# Set the new environment to work on the new branch
git push --set-upstream origin $3
git push --set-upstream upstream $3

# Commit to the new branch
git add .
sleep 1
git commit -u -m "First commit on this branch"
sleep 1
git push
sleep 1

echo "Branch $3 is ready for work!"

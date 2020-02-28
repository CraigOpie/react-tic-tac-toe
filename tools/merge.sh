#!/bin/bash
#USAGE: ./merge.sh project 'master' 'branch'

# Change repositories to the project
cd ~/git/$1

# Go into the branch to copy from and pull the files
git checkout $2
git pull origin $2
git sleep 1
git merge $3
git push origin $2
sleep 1
echo "Branches are merged!"

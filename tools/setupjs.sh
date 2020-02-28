#!/bin/bash
# USAGE: ./setupjs.sh browserhistory git@github.com:CraigOpie/browserhistory.git
# Setup command to put the required javascript files for ICS314 into the specified directory

# Setup the git repository locally
cd ~/git/
git clone $2
sleep 2
cd ~/git/$1
git remote add upstream $2

# Copy files to the correct directory
cp ~/git/tools/package.json ~/git/$1/package.json
cp ~/git/tools/.gitignore ~/git/$1/.gitignore
cp ~/git/tools/.eslintrc ~/git/$1/.eslintrc
echo "Files have been copied to the project $1"
sleep 1

#install all files with npm
npm install
sleep 5
echo "NPM has finished installing $1"

# Sync files with github
git add -A
sleep 1
git commit -m "Initial commit"
git push
sleep 2
echo "Ready for work!"


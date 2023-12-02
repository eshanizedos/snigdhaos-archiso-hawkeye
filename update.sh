#!/bin/bash
#set -e

# reset - commit your changes or stash them before you merge
# git reset --hard - personal alias - grh

echo "Deleting the work folder if one exists"
[ -d work ] && rm -rf work

# checking if I have the latest files from github
# echo "Checking for newer files online first"
# git pull

# workdir=$(pwd)
# echo "getting latest .bashrc"
# wget https://raw.githubusercontent.com/arcolinux/arcolinux-root/master/etc/skel/.bashrc-latest -O $workdir/archiso/airootfs/etc/skel/.bashrc


# Below command will backup everything inside the project folder
git add --all .

# Give a comment to the commit if you want
echo "####################################"
echo "Write your commit comment!"
echo "####################################"

read input

# Committing to the local repository with a message containing the time details and commit text

git commit -m "$input"

# Push the local files to github

# if grep -q main .git/config; then
# 	echo "Using main"
# 		git push -u origin main
# fi

if grep -q master .git/config; then
	echo "Using master"
		git push -u origin master
fi

echo "################################################################"
echo "###################    Git Push Done      ######################"
echo "################################################################"

#!/bin/bash

./add_package_repos.sh

LIST_FILE_NAME="packages.txt"
sudo apt-get update
sudo apt-get install $(cat $LIST_FILE_NAME)

# OMF
curl -L https://get.oh-my.fish | fish


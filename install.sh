#!/bin/bash

LIST_FILE_NAME="packages.txt"
sudo apt-get update
sudo apt-get install $(cat $LIST_FILE_NAME)
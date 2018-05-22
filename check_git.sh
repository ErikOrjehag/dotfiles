#!/bin/bash

cd /home/$USER/.dotfiles/


if ! [ -z "$(git status --porcelain)" ]; then 
  echo "Files changed in .dotfiles dir"
fi

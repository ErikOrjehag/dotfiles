#!/bin/bash

# Creates .dotfiles dir in home directory and copies all files there.
# Then symlinks known files to their correct settings dir.

DOTFILE_DIR_NAME=.dotfiles
DOTFILE_DIRECTORY=$HOME/$DOTFILE_DIR_NAME
EXISTING_DIR_NAME="old"
EXISTING_COMPLETE=$DOTFILE_DIRECTORY/$EXISTING_DIR_NAME


if [ -d "$DOTFILE_DIRECTORY" ]; then
  # Control will enter here if $DIRECTORY exists.
  echo "Directory $DOTFILE_DIRECTORY aleady exists"
  exit 1
fi

cp -r $(pwd) $DOTFILE_DIRECTORY
cd $DOTFILE_DIRECTORY
mkdir $EXISTING_COMPLETE


function copy_and_symlink {
  local_file=$1
  complete_path_to_file=$2
  symlink_path=$(pwd)/$local_file

  echo "Moving existing file $complete_path_to_file to $DOTFILE_DIRECTORY/$EXISTING_DIR_NAME/"
  mv $complete_path_to_file $EXISTING_COMPLETE

  echo "Creating symlink from $symlink_path to $complete_path_to_file"  
  ln -s $symlink_path $complete_path_to_file
}

copy_and_symlink "vscode/settings.json" "$HOME/.config/Code/User/settings.json"
copy_and_symlink "bashrc" "$HOME/.bashrc"
copy_and_symlink "profile" "$HOME/.profile"
copy_and_symlink "fish/config.fish" "$HOME/.config/fish/config.fish"
copy_and_symlink "fish/functions/fish_prompt.fish" "$HOME/.config/fish/functions/fish_prompt.fish"
copy_and_symlink "check_git.sh" "$HOME/.config/fish/check_git.sh"
copy_and_symlink "tigrc" "$HOME/.tigrc"

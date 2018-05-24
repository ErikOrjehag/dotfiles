#!/bin/bash

# Creates .dotfiles dir in home directory and copies all files there.
# Then symlinks known files to their correct settings dir.

DOTFILE_DIR_NAME=.dotfiles
DOTFILE_DIRECTORY=$HOME/$DOTFILE_DIR_NAME
EXISTING_DIR_NAME="old"
EXISTING_COMPLETE=$DOTFILE_DIRECTORY/$EXISTING_DIR_NAME


set -e
ask() {
  while true; do
    if [ "${2:-}" = "Y" ]; then
      prompt="Y/n"
      default=Y
    elif [ "${2:-}" = "N" ]; then
      prompt="y/N"
      default=N
    else
      prompt="y/n"
      default=
    fi
    read -p "$1 [$prompt] " REPLY </dev/tty
    if [ -z "$REPLY" ]; then
      REPLY=$default
    fi
    case "$REPLY" in
      Y*|y*) return 0 ;;
      N*|n*) return 1 ;;
    esac
  done
}

# Creates a symlink from arg1: local_file to arg2: complete_path_to_file. Uses ln -fs, i.e. removes existing file if present.
function do_symlink {
  local_file=$1
  complete_path_to_file=$2
  symlink_path=$(pwd)/$local_file
  
  echo "Creating symlink from $symlink_path to $complete_path_to_file"  
  ln -fs $symlink_path $complete_path_to_file
}

if [ -d "$DOTFILE_DIRECTORY" ]; then
  # Control will enter here if $DIRECTORY exists.
  echo "Directory $DOTFILE_DIRECTORY aleady exists"
  exit 1
fi

cp -r $(pwd) $DOTFILE_DIRECTORY
cd $DOTFILE_DIRECTORY
mkdir $EXISTING_COMPLETE


if ask "Install symlink for vscode settings?" Y; then
  do_symlink "vscode/settings.json" "$HOME/.config/Code/User/settings.json"
fi

if ask "Install symlink for bashrc?" Y; then
  do_symlink "bashrc" "$HOME/.bashrc"
fi

if ask "Install symlink for bash profile?" Y; then
  do_symlink "profile" "$HOME/.profile"
fi

if ask "Install symlink for fish?" Y; then
  do_symlink "fish/config.fish" "$HOME/.config/fish/config.fish"
  do_symlink "fish/functions/fish_prompt.fish" "$HOME/.config/fish/functions/fish_prompt.fish"  
fi

if ask "Install symlink for git checker?" Y; then
  do_symlink "check_git.sh" "$HOME/.config/fish/check_git.sh"
fi

if ask "Install symlink for tigrc?" Y; then
  do_symlink "tigrc" "$HOME/.tigrc"
fi
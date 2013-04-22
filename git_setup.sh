#!/bin/bash

function conditionally_move_file {
  local old_file=$1
  if [ -e ${old_file} ]; then
    mv ${old_file} ${old_file}-old 
  fi
}

# move old files
conditionally_move_file ~/.gitconfig

# link git files
ln -s ~/Dropbox/config/gitconfig ~/.gitconfig

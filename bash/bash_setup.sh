#!/bin/bash

# move old files
if [ -e ~/.bashrc ]; then
  mv ~/.bashrc ~/.bashrc-old
fi

if [ -e ~/.bash_profile ]; then
  mv ~/.bash_profile ~/.bash_profile-old
fi

if [ -e ~/.bash_local ]; then
  mv ~/.bash_local ~/.bash_local-old
fi

# link files
ln -s ~/Dropbox/config/bashrc.sh ~/.bashrc
ln -s ~/Dropbox/config/bash_profile.sh ~/.bash_profile

if [[ `uname` == 'Darwin' ]]; then
  ln -s ~/Dropbox/config/bash_local_mac.sh ~/.bash_local
fi

if [[ `uname` == 'Linux' ]]; then
  ln -s ~/Dropbox/config/bash_local_arch.sh ~/.bash_local
fi

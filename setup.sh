#!/usr/bin/env bash

CONFIG_DIR=~/config
SCRIPT_DIR=~/config/script

function conditionally_move_file {
  local old_file=$1
  local time_stamp=$(date +"%Y%m%d%H%M")
  if [ -e ${old_file} ]; then
    mv ${old_file} ${old_file}-old-${time_stamp}
  fi
}

function make_link {
  local target_file=$1
  local link_name=$2
  conditionally_move_file ${link_name}
  ln -fs ${target_file} ${link_name}
}

# set up bin directory
mkdir -p ~/bin

# setup bash files
make_link ${CONFIG_DIR}/bashrc.sh ~/.bashrc
make_link ${CONFIG_DIR}/bash_profile.sh ~/.bash_profile
make_link ${CONFIG_DIR}/bash_prompt.sh ~/bin/prompt
if [ `uname` == 'Darwin' ]; then
  make_link ${CONFIG_DIR}/bash_local_mac.sh ~/.bash_local
fi
if [ -e /etc/centos-release ]; then
  make_link ${CONFIG_DIR}/bash_local_centos.sh ~/.bash_local
fi

# setup emacs
make_link ${CONFIG_DIR}/emacs.d ~/.emacs.d

# setup git
make_link ${CONFIG_DIR}/gitconfig ~/.gitconfig

# setup other tools
make_link ${CONFIG_DIR}/ackrc ~/.ackrc
make_link ${CONFIG_DIR}/screenrc ~/.screen

# set up scripts
make_link ${SCRIPT_DIR}/tp.py ~/bin/tp
make_link ${SCRIPT_DIR}/git_prompt.py ~/bin/git_prompt.py
make_link ${SCRIPT_DIR}/anaconda.sh ~/bin/anaconda

# setup cuda
if [ `uname` == 'Darwin' ]; then
  make_link ${CONFIG_DIR}/cuda/cuda_mac.sh ~/bin/cuda
fi

# setup matlab
make_link ${CONFIG_DIR}/matlab/matlab.sh ~/bin/matlab-setup

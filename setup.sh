#!/usr/bin/env bash

CONFIG_DIR=~/config
SCRIPT_DIR=~/config/tools
BASH_DIR=~/config/bash
GIT_DIR=~/config/git-files
PYTHON_DIR=~/config/python

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
echo "setting up bash"
cd bash
./configure.py
cd ..

# setup emacs
make_link ${CONFIG_DIR}/emacs.d ~/.emacs.d

# setup git
make_link ${GIT_DIR}/gitconfig ~/.gitconfig

# setup other tools
make_link ${CONFIG_DIR}/other/ackrc ~/.ackrc
make_link ${CONFIG_DIR}/other/screenrc ~/.screen

# set up scripts
make_link ${SCRIPT_DIR}/tp.py ~/bin/tp
make_link ${SCRIPT_DIR}/git_prompt.py ~/bin/git_prompt.py
make_link ${PYTHON_DIR}/py2.sh ~/bin/py2
make_link ${PYTHON_DIR}/py3.sh ~/bin/py3
make_link ${PYTHON_DIR}/nb3.sh ~/bin/nb3

# setup cuda
if [ `uname` == 'Darwin' ]; then
  make_link ${CONFIG_DIR}/cuda/cuda_mac.sh ~/bin/cuda
fi

# setup matlab
make_link ${CONFIG_DIR}/matlab/matlab.sh ~/bin/matlab-setup

#!/usr/bin/env bash

# directory for external emacs tools
EXT_DIR=~/config/emacs.d/external

# create the directory if it does not exist
mkdir -p ${EXT_DIR}

# get magit
if [ ! -d ${EXT_DIR}/magit ]
then
  cd ${EXT_DIR}
  git clone git://github.com/magit/magit.git
  cd magit
  git checkout 1.2.0
  cd ${EXT_DIR}
fi

# get ack-el
if [ ! -d ${EXT_DIR}/ack-el ]
then
  cd ${EXT_DIR}
  git clone git://github.com/leoliu/ack-el.git
fi

# get emacs-color-theme-solarized
if [ ! -d ${EXT_DIR}/emacs-color-theme-solarized ]
then
  cd ${EXT_DIR}
  git clone git://github.com/sellout/emacs-color-theme-solarized.git
fi

# get markdown-mode
if [ ! -d ${EXT_DIR}/markdown-mode ]
then
  cd ${EXT_DIR}
  git clone git://jblevins.org/git/markdown-mode.git
fi

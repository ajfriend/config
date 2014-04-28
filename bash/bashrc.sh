## This file is sourced by all *interactive* bash shells on startup.  This
## file *should generate no output* or it will break the scp and rcp commands.

if [ -e /etc/bashrc ] ; then
  . /etc/bashrc
fi

## PATH

function conditionally_prefix_path {
  local dir=$1
  if [ -d $dir ]; then
    PATH="$dir:${PATH}"
  fi
}

conditionally_prefix_path /Applications/MATLAB_R2014a.app/bin
conditionally_prefix_path /opt/matlab/R2013b/bin
conditionally_prefix_path ~/.local/bin
conditionally_prefix_path ~/bin

## Optional shell behavior

shopt -s cdspell
shopt -s extglob
shopt -s checkwinsize

export PAGER="less"
export EDITOR="emacs -nw"

## History

# When you exit a shell, the history from that session is appended to
# ~/.bash_history.  Without this, you might very well lose the history of entire
# sessions (weird that this is not enabled by default).
shopt -s histappend

export HISTIGNORE="&:pwd:ls:ll:lal:[bf]g:exit:rm*:sudo rm*"
# remove duplicates from the history (when a new item is added)
export HISTCONTROL=erasedups
# increase the default size from only 1,000 items
export HISTSIZE=10000

## list aliases

#alias l="ls"
alias ll="ls -lh"
alias la="ls -alh"
#alias lal="ls -alh"

## open alias

if [ -e /etc/redhat-release ]; then
  alias open="gnome-open"
fi

## put local customizations in ~/.bash_local

if [ -e ~/.bash_local ] ; then
  . ~/.bash_local
fi

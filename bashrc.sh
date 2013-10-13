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

conditionally_prefix_path /usr/local/MATLAB/R2011b/bin
conditionally_prefix_path /Applications/MATLAB_R2011b.app/bin
#conditionally_prefix_path ~/.cabal/bin
#conditionally_prefix_path /usr/local/cuda-5.5/bin
conditionally_prefix_path ~/.local/bin
conditionally_prefix_path ~/bin

#PATH=.:./bin:${PATH}

## Terminal behavior

# Change the window title of X terminals
case $TERM in
  xterm*|rxvt|Eterm|eterm)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\007"'
    ;;
  screen)
    PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\033\\"'
    ;;
esac

# Show the git branch and dirty state in the prompt.
if [ `which git_prompt.py 2> /dev/null` ]; then
  function git_prompt {
    git_prompt.py
  }
else
  function git_prompt {
    echo ""
  }
fi

function ps1_exit_status {
  exit_code=$?
  if [[ $exit_code != 0 ]]; then
    echo ""
    echo "exit status of last command: $exit_code"
  fi
}

if [ -n "$BASH" ]; then
  export PS1='$(ps1_exit_status)\[\033[32m\]\n[\w] $(git_prompt)\n\[\033[31m\][\u@\h]\$ \[\033[00m\]'
fi

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

## List

# if [[ `uname` == 'Darwin' && ! -n $EMACS  ]]; then
#   alias ls="ls -G"
#   # good for dark backgrounds
#   export LSCOLORS=gxfxcxdxbxegedabagacad
# elif [[ ! -n $EMACS ]]; then
#   alias ls="ls --color=auto"
#   # good for dark backgrounds
#   export LS_COLORS='no=00:fi=00:di=00;36:ln=00;35:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=00;31:'
#   # For LS_COLORS template: $ dircolors /etc/DIR_COLORS
# fi

#alias l="ls"
alias ll="ls -lh"
alias la="ls -alh"
#alias lal="ls -alh"

## OS X .DS_Store files

# Get rid of those pesky .DS_Store files recursively
alias dstore-clean='find . -type f -name .DS_Store -print0 | xargs -0 rm'

## put local customizations in ~/.bash_local

if [ -e ~/.bash_local ] ; then
  . ~/.bash_local
fi

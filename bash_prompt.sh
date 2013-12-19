# source this file if fancy bash prompt is desired

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

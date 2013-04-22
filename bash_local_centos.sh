
# colors for gnome terminal
# gnome-terminal seems to set the COLORTERM environment variable
# I am not sure how reliable this is, but it seems to work for now
# Turns out that I have to test for the existence of the variable before I
# compare.  If I don't do this, the test evaluates to true ?!?
#if [[ -n "$COLORTERM" && "$COLORTERM"=='gnome-terminal' ]]; then
#    export TERM='xterm-256color'
#fi

if [[ ! -n $EMACS ]]; then
  alias ls="ls --color=auto"
  # good for dark backgrounds
  export LS_COLORS='no=00:fi=00:di=00;36:ln=00;35:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=00;31:'
  # For LS_COLORS template: $ dircolors /etc/DIR_COLORS
fi

# for the open command
alias open="gnome-open"

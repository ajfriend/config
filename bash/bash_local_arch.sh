
# colors for gnome terminal
# gnome-terminal seems to set the COLORTERM environment variable
# I am not sure how reliable this is, but it seems to work for now
# Turns out that I have to test for the existence of the variable before I
# compare.  If I don't do this, the test evaluates to true ?!?
#if [[ -n "$COLORTERM" && "$COLORTERM"=='gnome-terminal' ]]; then
#    export TERM='xterm-256color'
#fi

# for ssh agent
eval $(keychain --eval --agents ssh -Q --quiet id_rsa)

# for the open command
alias open="gnome-open"

# for the trash commands
alias tp="trash-put"

export PATH="$PATH:$HOME/.local/bin"

# Default programs
export EDITOR="nvim"
export TERMINAL="termite"
export BROWSER="firefox"
export MENU="dmenu"

# If running interactively
if [[ $- != *i* ]] ; then
    alias ls='ls --color=auto'

    #if [[ "$TERM" = "xterm*" || "$TERM" = "rxvt*" ]]; then
        PS1=$'\[\e[46m\e[37;1m\] \h \[\e[0m\e[36m\e[45m\]\[\e[37;1m\] \u \[\e[0m\e[35m\e[44m\]\[\e[37;1m\] \W \[\e[0m\e[34m\e[49m\]\[\e[0m\] '
    #fi

    startx
# If running non-interactively
else
    :
fi

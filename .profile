export PATH="$PATH:$HOME/.local/bin:$HOME/node_modules/.bin"

# Default programs
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="chromium-browser"
export MENU="dmenu"

alias ls='ls --color=auto'

PS1=$'\[\e[46m\e[37;1m\] \h \[\e[0m\e[36m\e[45m\]\[\e[37;1m\] \u \[\e[0m\e[35m\e[44m\]\[\e[37;1m\] \W \[\e[0m\e[34m\e[49m\]\[\e[0m\] '

# Maybe disable this?
startx

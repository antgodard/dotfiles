#
# Shell options
#

HISTFILE="$HOME/.zsh_history"
setopt sharehistory
stty -ixon

autoload -Uz select-word-style
select-word-style bash

# Enable direnv
eval "$(direnv hook zsh)"

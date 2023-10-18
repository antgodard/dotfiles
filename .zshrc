#!/usr/bin/env sh

ZSH_THEME="${ARG_THEME:-robbyrussell}"

plugins=(\
    colored-man-pages \
    fd \
    fzf \
    git \
    zsh-autosuggestions \
    zsh-completions \
    zsh-syntax-highlighting \
    zsh-z \
)

# Oh My zsh
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

source "$HOME/.config/zsh/options.zsh"
source "$HOME/.config/zsh/exports.zsh"
source "$HOME/.config/zsh/aliases.zsh"
source "$HOME/.config/zsh/keymaps.zsh"
source "$HOME/.config/zsh/utils.zsh"
source "$HOME/.config/zsh/witekio.zsh"

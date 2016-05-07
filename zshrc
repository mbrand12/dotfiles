# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="gallois"

plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

export TERM="xterm-256color"

setopt RM_STAR_WAIT

setopt interactivecomments

# setopt CORRECT

# Aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# Allows calling `$ phpunut` instead of `$ vendor/bin/phpunut` when such
# path exists relative to the current directory
export PATH="$PATH:./vendor/bin"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh


# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gallois"

plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias rbb="cd ~/Desktop/devSpace/RubyBench"
alias desk="cd ~/Desktop"

export TERM="xterm-256color"

setopt RM_STAR_WAIT

setopt interactivecomments

setopt CORRECT


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH=$PATH:~/npm-global/bin

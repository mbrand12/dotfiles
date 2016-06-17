# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_CUSTOM="$HOME/dotfiles"

ZSH_THEME="gallois-kolo"

plugins=(git zsh-syntax-highlighting svn-fast-info)

source $ZSH/oh-my-zsh.sh

export TERM="xterm-256color"

setopt RM_STAR_WAIT

setopt interactivecomments

# setopt CORRECT

# Aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# Allows calling `$ phpunut` instead of `$ vendor/bin/phpunut` (for example)
# when such path exists relative to the current directory, for composer.
export PATH="$PATH:./vendor/bin"

# Allows calling `$ gulp` instead of `$ node_modules/.bin/gulp` (for example)
# when such path exists relative to the current directory, for npm.
export PATH="$PATH:./node_modules/.bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting


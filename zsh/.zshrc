# Path to your oh-my-zsh installation.
export ZSH=/Users/alex/.oh-my-zsh

# Theme
#ZSH_THEME="random" # lucky dip  
#ZSH_THEME="agnoster" # simple powerline
#ZSH_THEME="theunraveler"
ZSH_THEME="powerlevel9k/powerlevel9k"

# Powerlevel9k tweaks
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vcs status root_indicator background_jobs history time)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_STRATEGY=truncate_folders
POWERLEVEL9K_SHORTEN_DELIMITER=""

# Plugins ~/.oh-my-zsh/plugins/*
plugins=(terraform git kitchen aws knife docker)

# Aliases and Functions
source $ZSH/oh-my-zsh.sh

# User configuration
source $HOME/.aliases
source $HOME/.functions

# Path to brew install applications
export PATH="/usr/local/bin:$PATH"

# Set Chef env variables for zsh
eval "$(chef shell-init zsh)"

# Add pyenv root dir at start
eval "$(pyenv init -)"

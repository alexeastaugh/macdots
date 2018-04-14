# Path to your oh-my-zsh installation.
export ZSH=/Users/alex/.oh-my-zsh

# Theme
#ZSH_THEME="random" # lucky dip  
#ZSH_THEME="agnoster" # simple powerline
ZSH_THEME="theunraveler"

# Plugins ~/.oh-my-zsh/plugins/*
plugins=(terraform git kitchen aws knife docker)

# Aliases and Functions
source $ZSH/oh-my-zsh.sh

# User configuration
source $HOME/.aliases
source $HOME/.functions


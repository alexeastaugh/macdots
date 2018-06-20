# Path to your oh-my-zsh installation.
export ZSH=/Users/alex/.oh-my-zsh

# Theme
#ZSH_THEME="random" # lucky dip  
ZSH_THEME="theunraveler"
#ZSH_THEME="gianu"

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

# pyenv
if which pyenv > /dev/null; then
eval "$(pyenv init -)";
eval "$(pyenv virtualenv-init -)"
fi

# Akoova Functions
export SCRIPT_DIR=$HOME/akoova/tools-repo
source ${SCRIPT_DIR}/helpers/elastera_functions
source ${SCRIPT_DIR}/helpers/elastera_completion

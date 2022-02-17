# Path to your oh-my-zsh installation.
export ZSH=/Users/alex/.oh-my-zsh

# Updates
zstyle ':omz:update' mode reminder

# Theme
#ZSH_THEME="random" # lucky dip  
ZSH_THEME="theunraveler"

# Plugins ~/.oh-my-zsh/plugins/*
plugins=(
    vagrant
    terraform
    git
    kitchen
    aws
    knife
    docker
)

# Aliases and Functions
source $ZSH/oh-my-zsh.sh
export PATH="/usr/local/opt/awscli@1/bin:$PATH"

# User configuration
source $HOME/.aliases
source $HOME/.functions

# Path to brew install applications
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# Set Chef env variables for zsh
eval "$(chef shell-init zsh)"

# pyenv
if which pyenv > /dev/null; then
eval "$(pyenv init -)";
eval "$(pyenv virtualenv-init -)"
fi

# Make bash autocompletion work
autoload bashcompinit
bashcompinit

# Akoova Functions
export SCRIPT_DIR=$HOME/akoova/tools-repo
source ${SCRIPT_DIR}/helpers/elastera_functions
source ${SCRIPT_DIR}/helpers/elastera_completion

# Coloured man pages
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

# aws-sam-cli
USER_BASE_PATH=$(python -m site --user-base)
export PATH=$PATH:$USER_BASE_PATH/bin

# Datadog local testing keys

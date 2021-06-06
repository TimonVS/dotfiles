# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="lambda"

plugins=(git osx)

source $ZSH/oh-my-zsh.sh

# User configuration

# fnm
export PATH=/Users/timon.vanspronsen/.fnm:$PATH
eval "`fnm env`"

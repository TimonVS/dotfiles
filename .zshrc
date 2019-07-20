# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="lambda"

plugins=(git osx)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="$HOME/bin:/usr/local/bin:$PATH"

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# asdf (https://asdf-vm.com/#/core-manage-asdf-vm?id=add-to-your-shell)
export ASDF_DIR=$(brew --prefix asdf)
source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash

# set yarn binaries on path
# must be below the .asdf source commands ^
export PATH="$(yarn global bin):$PATH"

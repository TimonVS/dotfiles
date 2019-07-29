# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="lambda"

plugins=(git osx)

source $ZSH/oh-my-zsh.sh

# User configuration

# Add ~/bin to path
export PATH="$HOME/bin:$PATH"

# Homebrew
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# asdf (https://asdf-vm.com/#/core-manage-asdf-vm?id=add-to-your-shell)
export ASDF_DIR="/usr/local/opt/asdf"
source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash

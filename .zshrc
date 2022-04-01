# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="lambda"

plugins=(git osx)

source $ZSH/oh-my-zsh.sh

# User configuration

# User functions

function git-reset-origin() {
  branch_name="$(git branch --show-current)"
  echo "Are you sure that you want to reset this branch to origin/${branch_name}? [y/N]"
  read reply
  if [[ $reply =~ ^[Yy]$ ]]; then
    echo "Resetting branch to origin/${branch_name}"
    git fetch origin
    git reset --hard "origin/$(git branch --show-current)"
  fi
}

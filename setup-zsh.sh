#!/bin/bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `setup-zsh.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

brew upgrade

brew install zsh zsh-completions
chsh -s /bin/zsh

echo "Done installing zsh."
echo "Install oh-my-zsh by following the steps on https://ohmyz.sh."
#!/bin/bash

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `setup-apps.sh` has finished
while true; do
  sudo -n true
  sleep 60
  kill -0 "$$" || exit
done 2>/dev/null &

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Basics

brew install svn

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Apps
brew install --cask visual-studio-code
brew install --cask slack
brew install --cask homebrew/cask-versions/firefox-developer-edition
brew install --cask google-chrome
brew install --cask spotify
brew install --cask whatsapp
brew install --cask scroll-reverser
brew install --cask rectangle
brew install --cask raycast
brew install --cask 1password

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Fonts

# Add fonts tap
brew tap homebrew/cask-fonts

brew install --cask font-fira-code
brew install --cask font-roboto
brew install --cask font-inter

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# CLI tools

# safe-rm
brew install safe-rm
# Alias rm to safe-rm by putting it before rm in the path
ln -s /usr/local/bin/safe-rm /usr/local/bin/rm
# Symlink global config for safe-rm
sudo ln -s ~/.dotfiles/safe-rm.conf /etc/safe-rm.conf

# jq
brew install jq

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Remove outdated versions from the cellar.
brew cleanup

# initialize new settings
source ~/.zshrc

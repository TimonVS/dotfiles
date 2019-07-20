#!/bin/bash

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `setup-apps.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Apps
brew cask install visual-studio-code
brew cask install 1password
brew cask install slack
brew cask install homebrew/cask-versions/firefox-developer-edition
brew cask install google-chrome
brew cask install spotify
brew cask install whatsapp
brew cask install karabiner-elements

# Alfred v3
brew cask install https://raw.githubusercontent.com/Homebrew/homebrew-cask/64e9549b65c5a84632dc3451c6249fa1c375efb4/Casks/alfred.rb

# Spectacle
brew cask install spectacle

# Hide status item for Spectacle.app
defaults write com.divisiblebyzero.Spectacle StatusItemEnabled -bool false

# Add Spectacle.app as a login item
osascript -e 'tell application "System Events" to make login item at end with properties {path:"/Applications/Spectacle.app", hidden:false}'

# Set up my preferred keyboard shortcuts for Spectacle.app
# cp -r spectacle.json ~/Library/Application\ Support/Spectacle/Shortcuts.json 2> /dev/null

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Fonts

# Add fonts tap
brew tap homebrew/cask-fonts

brew cask install font-fira-code
brew cask install font-fira-mono
brew cask install font-fira-sans
brew cask install font-roboto
brew cask install font-source-sans-pro
brew cask install font-inter

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# CLI tools

# asdf
brew install coreutils
brew install gpg
brew install asdf
# NodeJS
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
# Elm
asdf plugin-add elm https://github.com/vic/asdf-elm.git
# Install versions defined in .tool-versions
asdf install

# yarn
npm i -g yarn

# safe-rm
brew install safe-rm
# Alias rm to safe-rm by putting it before rm in the path
ln -s /usr/local/bin/safe-rm /usr/local/bin/rm
# Symlink global config for safe-rm
sudo ln -s ~/.dotfiles/safe-rm.conf /etc/safe-rm.conf

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Remove outdated versions from the cellar.
brew cleanup

# initialize new settings
source ~/.zshrc

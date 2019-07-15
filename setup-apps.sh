#!/bin/bash

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Apps
brew cask install visual-studio-code
brew cask install 1password
brew cask install slack
brew cask install homebrew/cask-versions/firefox-developer-edition
brew cask install google-chrome
brew cask install spotify

# Alfred v3
brew cask install https://raw.githubusercontent.com/Homebrew/homebrew-cask/64e9549b65c5a84632dc3451c6249fa1c375efb4/Casks/alfred.rb

# CLI tools

# asdf
brew install coreutils
brew install gpg
brew install asdf
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
asdf install

# yarn
npm i -g yarn

# Remove outdated versions from the cellar.
brew cleanup
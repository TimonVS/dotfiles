#!/bin/bash

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

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
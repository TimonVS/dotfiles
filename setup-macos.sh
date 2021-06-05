#!/bin/bash

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Dock & Dashboard

# Dock size
defaults write com.apple.dock tilesize -int 48

# Minimize windows into application icon
defaults write com.apple.dock minimize-to-application -bool true

# Auto hide dock
defaults write com.apple.dock autohide -bool true

# Hide recents section in dock
defaults write com.apple.dock show-recents -bool false

# Don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Keyboard

# Set a fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Mouse & Trackpad

# Tap to click on Trackpad
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write 'Apple Global Domain' com.apple.mouse.tapBehavior 1

# Enable three finger dragging
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool true

defaults write com.apple.AppleMultitouchTrackpad Dragging -bool false
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Dragging -bool false

# Slightly increase Trackpad tracking speed
defaults write -g com.apple.trackpad.scaling -float 0.875

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Finder

# Show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Don't show warning before changing an extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Don't show warning before removing from iCloud Drive
defaults write com.apple.finder FXEnableRemoveFromICloudDriveWarning -bool false

# Set the home directory as the default location for new Finder windows
defaults write com.apple.finder NewWindowTarget -string "PfHm"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Language & Region

defaults write NSGlobalDomain AppleLocale -string "en_NL"
defaults write NSGlobalDomain AppleLanguages -array "en-US" "nl-NL"

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Others

# Save screenshots to screenshots folder
mkdir -p ~/Screenshots
defaults write com.apple.screencapture location -string "${HOME}/Screenshots"

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Kill affected apps
for app in "Dock" "Finder" "SystemUIServer"; do
  killall "${app}" > /dev/null 2>&1
done

# Done
echo "Done. Note that some of these changes require a logout/restart to take effect."

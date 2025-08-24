#!/bin/bash

# --- Dock --- #

# Auto-hide MacOS Dock
defaults write com.apple.dock autohide -bool true

# Group windows by app so we don't end up with tiny windows because of AeroSpace
defaults write com.apple.dock expose-group-apps -bool true

# Restart the Dock
killall Dock

# --- Wallpaper --- #
WALLPAPER=$HOME/dotfiles/assets/purple-mountains-dear.png
WALLPAPER_ABS_PATH=$(realpath "$WALLPAPER")
osascript -e "tell application \"System Events\" to set picture of every desktop to POSIX file \"$WALLPAPER_ABS_PATH\""

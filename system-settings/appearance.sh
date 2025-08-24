#!/bin/bash

# Auto-hide MacOS Dock
defaults write com.apple.dock autohide -bool true && killall Dock

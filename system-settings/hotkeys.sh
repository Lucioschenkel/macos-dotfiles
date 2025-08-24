#!/bin/bash

# Disable Cmd+Space for Spotlight search
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 64 "<dict><key>enabled</key><false/></dict>"

# Restart SystemUIServer to apply changes
killall SystemUIServer

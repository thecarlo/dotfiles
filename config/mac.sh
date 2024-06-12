#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# create folders
echo "creating folders ⌛"

mkdir -p ~/Documents/screenshots
mkdir ~/Downloads
mkdir ~/qprojects
mkdir ~/projects

echo "✅ done creating folders"

###############################################################################
# General Settings                                                            #
###############################################################################

echo "setting general settings ⌛"

# Disable "natural" scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# set screenshots folder
defaults write com.apple.screencapture location -string "~/Documents/screenshots"

# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `glyv`
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Show the /Volumes folder
sudo chflags nohidden /Volumes

# Show the ~/Library
sudo chflags nohidden ~/Library

# disable floating thumbnail when taking screenshots
defaults write com.apple.screencapture show-thumbnail -bool FALSE

# disable show recent tags
defaults write com.apple.finder ShowRecentTags -bool false

# open folders in new tabs
defaults write com.apple.finder FinderSpawnTab -bool true

# new finder window open home folder
currentuser=`stat -f "%Su" /dev/console`
defaults write com.apple.finder NewWindowTarget -string "PfLo"
defaults write com.apple.finder NewWindowTargetPath -string "file://localhost/Users/$currentuser"

echo "✅ configured general settings"

###############################################################################
# Time Machine                                                                #
###############################################################################

echo "setting time machine settings ⌛"

# Prevent Time Machine from prompting to use new hard drives as backup volume
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

echo "✅ configured time machine settings"

###############################################################################
# Energy saving                                                               #
###############################################################################
echo "setting energy saving settings ⌛"

# Sleep the display
sudo pmset -a displaysleep 10

echo "✅ configured energy saving settings"
###############################################################################
# Screensaver                                                                 #
###############################################################################
echo "setting screensaver settings ⌛"

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# screensaver idle time
defaults write com.apple.screensaver idleTime -int 300

echo "✅ configured screensaver settings"
###############################################################################
# Dock, Dashboard, and hot corners                                            #
###############################################################################
echo "setting dock and dashboard settings ⌛"

# Don’t show recent applications in Dock
defaults write com.apple.dock show-recents -bool false

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

echo "✅ configured dock and dashboard settings"
###############################################################################
# Desktop & Spaces                                                            #
###############################################################################
echo "setting desktop and spaces settings ⌛"

# Displays have separate Spaces
defaults write com.apple.spaces spans-displays -bool false

# Don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

# Disable group windows by application
defaults write com.apple.dock expose-group-by-app -bool false

# enable "When switching to an application, switch to a Space with open windows for that application"
defaults write com.apple.Dock workspaces-auto-swoosh -bool true

echo "✅ configured desktop and spaces settings"

# reload dock and finder
echo "reloading dock and finder ⌛"

killall Dock
killall Finder

echo "✅ reloaded dock and finder"

echo "configured mac settings 🚀"


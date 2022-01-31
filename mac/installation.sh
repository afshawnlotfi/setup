#!/bin/bash

bash ../shared_unix/installation.sh

#Downloading and Installing Homebrew Suite
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

#Downloading and installing necessary desktop apps
brew install --cask visual-studio-code firefox protonvpn docker ultimaker-cura

#Downloading and installing necessary programs
brew install fish

#Setting up mac Settings
bash ../private/mac/installation.sh
cp config ~/.ssh/config

(which fish) | sudo tee -a /etc/shells> /dev/null

#Dock
rm -rf ~/Library/Preferences/com.apple.dock.plist
cp ../private/mac/preferences/com.apple.dock.plist ~/Library/Preferences
killall Dock

#Shell
sudo chsh -s $(which fish) $USER

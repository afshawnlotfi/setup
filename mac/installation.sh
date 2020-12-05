#!/bin/bash

bash ../shared_unix/installation.sh &&

#Downloading and Installing Homebrew Suite
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

#Downloading and installing necessary desktop apps
brew cask install visual-studio-code firefox protonvpn postman docker vlc xquartz spotify signal freecad

#Downloading and installing necessary programs
brew install fish node yarn openconnect

mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
fish -c "set -U fish_user_paths ~/.npm-global/bin $fish_user_paths"


yarn global add eslint ts-node

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

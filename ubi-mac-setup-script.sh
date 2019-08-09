#!/bin/sh

# Homebrew Script for OSX
# To execute: save and `chmod +x ./ubi-mac-setup-script.sh` then `./ubi-mac-setup-script.sh`

echo "Installing brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing Formulae from Homebrew"
# Formulae
brew install git
brew install node
brew install amazon-ecs-cli
brew install maven 

echo "Installing npm packages"
# npm 
npm install -g @angular/cli
npm install zsh

echo "Install Oh My Zsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Installing Casks from Homebrew"
# Casks
brew cask install slack
brew cask install iterm2
brew cask install zoom
brew cask install sourcetree
brew cask install postman
brew cask install docker
brew cask install google-drive-file-stream
brew cask install visual-studio-code
brew cask install adobe-creative-cloud
brew cask install jetbrains-toolbox
brew cask install android-studio
brew cask install kitematic
brew cask install google-chrome
brew cask install dropbox
brew cask install spotify
brew cask install notion
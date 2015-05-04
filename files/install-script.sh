#!/bin/sh

xcode-select --install 2>/dev/null

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Setting up XCode"
xcodebuild -license 2>/dev/null

echo "Installing command line utilities"

# Update homebrew recipes
brew update

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install Bash 4
brew install bash

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep

$PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH

brew install git
brew install hub

brew cleanup

brew install caskroom/cask/brew-cask

brew tap caskroom/versions

# Apps
apps=(
  google-chrome
  atom
  iojs
  slack
  dash
  iterm2
  screenhero
  github
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

echo "Setting Git to use Atom as default editor"
git config --global core.editor "atom --wait"

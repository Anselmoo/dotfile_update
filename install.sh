# Script for installing missing packanges and dependecies via homebrew
# Setting-Up vim, tmux, zsh via shell and creating alias-dotfile

echo "Starting bootstrapping"
# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
# Update homebrew recipes
brew update
brew bundle

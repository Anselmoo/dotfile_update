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

echo "Setting-up the dotfiles for vimrc, zshrc, tmux, and alias"

cp -i vimrc ~/.vimrc
cp -i zshrc ~/.zshrc
cp -i tmux ~/.tmux
cp -i shortcuts ~/.shortcuts
cp -i p10k.zsh ~/.p10k.zsh


echo "Setting-up python3"
curl -O https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py
pip3 install -r requirements.txt 

echo "Bootstrapping complete"

#!/bin/bash

# Ask sudo permission
echo "Enter sudo password: "
sudo -v

# Keep sudo permission valid
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install tools
echo "Downloading git-prompt.sh..."
curl -o ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh

echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" <<< $'\n'

echo "Installing packages from brew_packages.txt..."
xargs brew install < brew_packages.txt

echo "Installing vim plugin"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Installing Rust"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Setting environment
sudo chmod 700 mac-relinking.sh
bash mac-relinking.sh

echo "Installation and setup completed!"

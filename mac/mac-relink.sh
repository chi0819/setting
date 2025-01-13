#!/bin/bash

echo "Relinking the environment setting files"
rm -f ~/.bashrc
rm -f ~/.bash_profile
rm -f ~/.vimrc

ln mac-bashrc ~/.bashrc
ln mac-bash-profile ~/.bash_profile
ln ../share/vimrc ~/.vimrc
echo "Relinking Successfully"


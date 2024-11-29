#!/bin/bash

echo "Relinking the environment setting files"
rm -f ~/.bashrc
rm -f ~/.bash_profile
rm -f ~/.vimrc

ln ../share/bashrc ~/.bashrc
ln mac-bash_profile ~/.bash_profile
ln ../share/vimrc ~/.vimrc
echo "Relinking Successfully"


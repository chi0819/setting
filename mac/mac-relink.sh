#!/bin/bash

echo "Relinking the environment setting files"
rm -f ~/.bashrc
rm -f ~/.bash_profile
rm -f ~/.vimrc

ln -s ../share/bashrc ~/.bashrc
ln -s mac-bash_profile ~/.bash_profile
ln -s ../share/vimrc ~/.vimrc
echo "Relinking Successfully"


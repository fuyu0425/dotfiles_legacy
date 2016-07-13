#!/bin/sh
echo "start dotfile install"
here=$PWD
#echo "$PWD"
echo "the dotfile location is $here"
cd ~
echo "create symbolic link in $PWD"
ln -s $here/.vimrc
ln -s $here/.zshrc
echo "complete"

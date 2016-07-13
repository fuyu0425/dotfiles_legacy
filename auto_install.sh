#!/bin/sh
echo "OS is $(uname -s)"
echo "start dotfile install"
git submodule init
git submodule update --recursive
here=$PWD
#echo "$PWD"
echo "the dotfile location is $here"
cd ~
echo "create symbolic link in $PWD"
ln -s $here/.vimrc
ln -s $here/.zshrc
ln -s $here/.vim
echo "vim setting"

vim +PluginInstall +qall
cd .vim/bundle/YouCompleteMe
./install.py --clang-completer
echo "complete"

#!/bin/sh
echo "OS is $(uname -s)"
echo "start dotfile install"
here=$PWD
echo "vim setting"
vim +PluginInstall +qall
cd .vim/bundle/YouCompleteMe
./install.py --clang-completer
#echo "$PWD"
echo "the dotfile location is $here"
cd ~
echo "create symbolic link in $PWD"
ln -s $here/.vimrc
ln -s $here/.zshrc
ln -s $here/.vim
echo "complete"

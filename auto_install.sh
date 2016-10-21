#!/bin/sh -x
OS=$(uname -s)
echo "OS is $OS"
echo "start dotfile install"
git submodule init
git submodule update --recursive
here=$PWD
#echo "$PWD"
echo "the dotfile location is $here"
cd ~
echo "create symbolic link in $PWD"
echo $OS
if [ $OS = "Darwin" ] ;then
echo "hi"
ln -s $here/mac/.zshrc
else 
ln -s $here/ubuntu/.zshrc
fi
echo "vim setting"
ln -s $here/.vim
ln -s $here/.vimrc
vim +PluginInstall + GoInstallBinaries +qall 
cd .vim/bundle/YouCompleteMe
./install.py --clang-completer --gocode-completer
echo "complete"

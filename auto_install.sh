#!/bin/sh -x
OS=$(uname -s)
echo "OS is $OS"
echo "start dotfile install"
git submodule init
git submodule update --recursive
here=$PWD
#echo "$PWD"
echo "the dotfile location is $here"
if [ $OS = "Darwin" ] ;then
echo "hi"
ln -s $here/mac/.zshenv $HOME
else 
ln -s $here/ubuntu/.zshenv $HOME
fi
ln -s $here/common/fuyu0425.zsh-theme $HOME/.oh-my-zsh/themes
echo "common settings start"
echo "tmux setting"
ln -s $here/common/.tmux.conf $HOME
echo "vim setting"
ln -s $here/common/.vim $HOME
ln -s $here/common/.vimrc $HOME
vim +PluginInstall + GoInstallBinaries +qall 
cd $HOME/.vim/bundle/YouCompleteMe
./install.py --clang-completer --gocode-completer
echo "complete"

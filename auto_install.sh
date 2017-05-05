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
ln -fs $here/mac/.zshenv $HOME
else 
ln -fs $here/ubuntu/.zshenv $HOME
fi
ln -fs $here/common/fuyu0425.zsh-theme $HOME/.oh-my-zsh/themes
echo "common settings start"
echo "tmux setting"
ln -fs $here/common/.tmux.conf $HOME
echo "vim setting"
ln -fs $here/common/.vim $HOME
ln -fs $here/common/.vimrc $HOME
vim +PluginInstall +qall 
cd $HOME/.vim/bundle/YouCompleteMe
./install.py --clang-completer
echo "complete"

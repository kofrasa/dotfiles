#!/usr/bin/env bash

DIR=`dirname $0`

PLUG=$HOME/.vim/autoload/plug.vim
if [ ! -f $PLUG ]; then
  curl -fLo $PLUG --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi  

# install configuration
cp $DIR/plug.vim ~/.vim/plug.vim
cp $DIR/vimrc ~/.vimrc
vim +PlugInstall +qall

cd $DIR

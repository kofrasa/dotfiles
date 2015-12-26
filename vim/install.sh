#!/usr/bin/env bash

DIR=`dirname $0`
PWD=`pwd`

mkdir -p ~/.vim/bundle

# Download Vundle
# Skip if already installed unless -f option is given
VUNDLE=~/.vim/bundle/Vundle.vim
if [[ ! -e $VUNDLE || $1 = "-f" ]]; then
    if [ -d $VUNDLE ]; then     
        cd $VUNDLE 
        git pull
        cd -
    else
        git clone "https://github.com/gmarik/Vundle.vim.git" "$VUNDLE"
    fi
fi

# install configuration
cat $DIR/vimrc > ~/.vimrc

# run Vundle installation command
vim +PluginInstall +qall

if [[ $1 = '-f' ]]; then
    echo -n "Compile and install YouCompleteMe: y/n: "
    read y
    if [[ $y == 'y' ]]; then
        cd ~/.vim/bundle/YouCompleteMe
        ./install.py --clang-completer
    fi
fi

cd $PWD

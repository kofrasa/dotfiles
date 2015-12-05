#!/usr/bin/env bash

DIR=`dirname $0`

mkdir -p ~/.vim/bundle
mkdir -p ~/.vim/colors

# Download Vundle
# Skip if already installed unless -f option is given
VUNDLE=~/.vim/bundle/Vundle.vim
if [[ ! -e $VUNDLE || $1 = "-f" ]]; then
    if [ -d $VUNDLE ]; then
        cwd=`pwd`
        cd $VUNDLE && git pull
        cd $cwd
    else
        git clone "https://github.com/gmarik/Vundle.vim.git" "$VUNDLE"
    fi
fi

# install configuration
cat $DIR/vimrc > ~/.vimrc
cp $DIR/colors/* ~/.vim/colors

# run Vundle installation command
vim +PluginInstall +qall

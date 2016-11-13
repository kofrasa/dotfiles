#!/usr/bin/env bash

DIR=`dirname $0`
ARG=$1

install() {
    arg=$1
    echo "installing $arg"

    if [ -d $arg ]; then
        cd $arg
        source ./install.sh
        cd $DIR
    elif [ -f $arg ]; then
        cp "$arg" "$HOME/.$arg"
    fi
}

if [ -z $ARG ]; then
    for arg in $(ls $DIR | grep -v "`basename $0`"); do
        install $arg
    done
else
    install $ARG
fi



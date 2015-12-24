#!/usr/bin/env bash

DIR=`dirname $0`

for name in $(ls $DIR | grep -v "`basename $0`"); do
    echo "installing $name"
    if [ -d $name ]; then
        cd "$DIR/$name"
        source "./install.sh" $*
        cd $DIR
    elif [ -f $name ]; then
        cp "$name" "$HOME/.$name"
    fi
done


#!/usr/bin/env bash
set -e

DIR=`dirname $0`
ARG=$1
shift
OPT=`ls $DIR | grep -v 'install.sh' | sort`

# validate directory
if test -z "$ARG"; then
    echo "Specify install directory: See options below"
    echo "$OPT"
    exit 1
fi

BASE="$DIR/$ARG"
if test ! -d $BASE; then
    echo "Invalid directory '$ARG': See options below"
    echo "$OPT"
    exit 1
fi

echo "installing '$ARG' config..."

if test -f "$BASE/install.sh"; then
    exec "$BASE/install.sh" $@
else
    for conf in `ls $BASE`; do
        cp "$BASE/$conf" "$HOME/.$conf"
    done
fi


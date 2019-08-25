#!/bin/bash

answer=yes
[ "$answer" = 'yes' ]
echo $?

test "$answer" = 'yes'
echo $?

if [ -f ~/.vimrc ]; then
    echo "ok"
fi

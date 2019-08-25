#!/bin/bash

#bashではif文の中に何もしない処理をかくときは空にしておくことはできない

file=$1
if [ -e "$file" ]; then
  #なにもしない
else
  touch "$file"
fi


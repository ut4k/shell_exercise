#!/bin/bash

file="$1"

# ファイル名が空でない かつ ファイルが存在しない
if [ -n "$file" ] && [ ! -e "$file" ]; then
  touch "$file"
fi

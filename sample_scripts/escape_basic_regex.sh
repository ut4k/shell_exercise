#!/bin/bash

# メタ文字をエスケープして出力する

printf '%s\n' "$1" | sed 's/[.*\^$[]/\\&/g'
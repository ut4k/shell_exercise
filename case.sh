#!/bin/bash

file="$1"
case "$file" in
  *.txt)
    head "$file"
    ;;
  *.tar.gz | *.tgz)
    tar xzf "$file"
    ;;
  *)
    echo "not supported file : $file"
    ;;
esac

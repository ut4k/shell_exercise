#!/bin/bash

file=$1
if [ -e "$file" ]; then
  #なにもしないときは「:」をかく
 : 
else
  touch "$file"
fi

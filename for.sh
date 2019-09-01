#!/bin/bash

# 単語リストに対して

for i in aaa bbb ccc
do
  echo $i
done

# 引数に対して

for i in "$@"
do
  echo $i
done

for i in {1..9}
do
  if [[ $i -eq 3 ]]; then
    continue
  elif [[ $i -eq 5 ]]; then
    break
  fi

  echo $i
done

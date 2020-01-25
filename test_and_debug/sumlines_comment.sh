#!/bin/bash

result=0


#コマンドの結果をwhile文に送る
grep -v '^#' \
 | while IFS= read -r number
   do
   	((result+=number))
   done

printf '%s\n' "$result"

#!/bin/bash

result=0

# プロセス置換 <() で読み込めば親のシェルの環境設定のままwhileを動作させられる
while IFS= read -r number
do
	((result+=number))
done < <(grep -v '^#')

printf '%s\n' "$result"

#!/bin/bash

#グループコマンドで複数コマンドの結果をまとめて出力

{
	date +%Y-%m-%d
	echo '/usr list'
	ls /usr
} > result.txt

{ date +%Y-%m-%d; echo '/usr list'; ls /usr; } > result2.txt

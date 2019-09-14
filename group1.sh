#!/bin/bash

#複数コマンドの実行出力を保存したいとき:w
#毎回ファイルに追記すると不便

date +%Y-%m-%d > result.txt
echo '/usr list' >> result.txt
ls /usr >> result.txt

#!/bin/bash

save_tmp_file()
{
    # 作業中のデータをファイルに保存する
    echo "$data" > ~/tmpdata.$$
    exit
}

trap save_tmp_file HUP INT QUIT TERM

echo start

# dataは作業途中のデータを保管するためのグローバル変数
data=$(cat "$1")

# dataを変換する処理...
# dataを変換する処理...

echo end

#!/bin/bash

set -o errexit

list()
{
	local file=$(ls --unknown)
	echo "files =$files" #コマンド置換を実行するとエラーがあってもステータス0が返るのでここに達する
}

list

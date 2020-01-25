#!/bin/bash

# 実行せずにlintだけできる
# ここに直接書かない場合は bash -n noexec_error.sh でもOK
set -o noexec

echo 'noexec test'
if [[ $1 == YES]];
	echo 'YES'
else
	echo 'NO'
fi

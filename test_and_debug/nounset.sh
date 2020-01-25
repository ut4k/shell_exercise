#!/bin/bash

#未割り当て変数を許さない。$varは未定義なのでエラーになって止まる
set -o nounset

echo 'start'
echo "[$var]"
echo 'stop'

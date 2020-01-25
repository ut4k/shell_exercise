#!/bin/bash

set -o errexit

number=2
((number -= 1))
echo "number = $number"

((number -= 1)) #計算は正しくても終了ステータスが1になる１
echo "number = $number"

#macだとうごいた ???

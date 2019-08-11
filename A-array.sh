#!/bin/bash
declare -A user=([id]=5 [name]=miyake)
echo ${user[id]}
echo ${user[name]}

#要素数
echo ${#user[@]}

user[name]=MiyakeHideaki
user[country]=Japan

echo ${user[id]}
echo ${user[name]}
echo ${user[country]}

#削除
unset user[name]

#################

declare -A capitals
capitals=([Japan]=Tokyo [France]=Paris [Germany]=Blerlin [Finland]=Helsinki)

echo "${capitals[@]}"

#キーの取得
echo "${!capitals[@]}"

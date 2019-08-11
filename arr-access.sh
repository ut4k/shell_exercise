#/!bin/bash

prefectures=(Hokkaido Aomori Iwate)
echo ${prefectures[*]}
echo ${prefectures[@]}

#配列のコピー
prefectures2=("${prefectures[@]}")

#先頭に要素を追加
prefectures3=(aaa bbb "${prefectures[@]}")

#末尾に要素を追加
prefectures4=("${prefectures[@]}" ccc ddd)

#末尾に要素を追加(alternative)
prefectures+=(ccc ddd)

#インデックスの取得 -- 配列名の前に「!」をつける
countries=([0]=Japan [2]=France [3]=Germany)
echo ${!countries[@]}



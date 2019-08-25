#変数が未定義なら右の値が使われる

echo ${name:-yuta}

name=kimura

#定義してある場合は変数が使われる。

echo ${name:-yuta}

echo ${config_file:-$HOME/.config}

name=
echo ${name-yuta}

name=kimura
echo ${name-yuta}

unset name
echo ${name-yuta}

echo "----------------------------"
echo ${MYNAME:=yuta}
echo $MYNAME

MYNAME=kimura1
echo ${MYNAME:=yuta}

echo $MYNAME


#値が設定されていない場合のエラー制御
#cd ${dir:?You must specify directory}
#cd ${dir:?}

#文字列を切り出す
#n文字目から〜を指定

name=/usr/bin
echo ${name:1}
echo ${name:2}

#負の数もok
echo ${name: -2}
#指定した位置までの長さ
echo ${name:1:5}
#配列の一部要素を取得
arr=(aaa bbb ccc ddd)
echo ${arr[@]:1} #配列の2番目から取得
echo ${arr[@]:1:2} #配列の2番目から2つ取得

#文字数に展開 #文字カウント
name=/etc/crontab
echo ${#name}

#パターンマッチしたぶぶんを取り出して/取り除いて展開
pref1=Aomori
echo ${pref1#Ao}

pref2=Akita
echo ${pref2#Ao}

#最短マッチ
file=home.tar.gz
echo ${file#*.}
#最長マッチ
echo ${file##*.}
#最短マッチ
echo ${file%.*}
#最長マッチ
echo ${file%%.*}

path1=/var/local/backup/file.txt
echo ${path1##*/}

arr=(home.tar.gz file.zip)
echo ${arr[@]%%.*}

#置換して展開
file=home.tar.gz
echo ${file/./_}

file=home.tar.gz
echo ${file/.*/.txt}

arr=(home.tar.gz file.zip)
echo ${arr[@]//./_}


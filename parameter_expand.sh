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

echo "chihirodesu"

#!/bin/bashb

str1=xxx
str2=yyy
if [[ $str1 = $str2 ]]; then
  echo YES
else
  echo NO
fi


#エラー

# x=6
# if [[ $x -gt 3 && $x -lt 7 ]; then
#   echo 'x > 3 AND x < 7'
# else
#   echo 'x <= 3 OR x >= 7'
# fi

#エラー

# str='abc xyz'
# if [ $str = abc ]; then
#   echo YES
# else
#   echo NO
# fi

#エラー

# str1=
# str2=xxx
# if [ $str1 = $str2 ]; then
#   echo YES
# else
#   echo NO
# fi

str1=
str2=xxx
if [[ $str1 = $str2 ]]; then
  echo YES
else
  echo NO
fi

str1=xyz
if [[ $str1 == x* ]]; then
  echo YES
else
  echo NO
fi

str1=xyz
pettern='x*'
if [[ $str1 == $pattern ]]; then
  echo YES
else
  echo NO
fi

str1=/home/yuta
if [[ $str1 =~ ^/home/[^/]+$ ]]; then
  echo YES
else
  echo NO
fi



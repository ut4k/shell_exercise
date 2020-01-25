#!/bin/bash

a_flag=
b_flag=
n_arg=

while getopts abn: option
do
	case "$option" in
		a)
			a_flag=true
			;;
		b)
			b_flag=true
			;;
		n)
			n_arg=$OPTARG
			;;
		\?)
			exit 1
			;;
	esac
done

shift $((OPTIND -1))

cat << END
a_flag = $a_flag
b_flag = $b_flag
n_arg = $n_arg
\$1 = $1
\$2 = $2
END

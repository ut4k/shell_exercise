#!/bin/bash

#
# getopts VERSION!!
#

readonly SCRIPT_NAME=${0##*/}
readonly VERSION=1.0.0

print_help()
{
	cat << END
Usage: $SCRIPT_NAME [OPTION]... PATTERN
help message!
blablabla...
blablabla...
END
}

print_version()
{
	cat << END
	$SCRIPT_NAME version $VERSION
END
}

print_error()
{
	cat << END 1>&2
	$SCRIPT_NAME: $1
	Try --help option for more information
END
}

directory=.
find_name='*'
ignore_case=
line_number=

while getopts :d:s:inhV option
do
	case "$option" in
		d)
			directory=$OPTARG
			;;
		s)
			find_name="*$OPTARG"
			;;
		i)
			ignore_case=true
			;;
		n)
			line_number=true
			;;
		h)
			print_help
			exit 0
			;;
		V)
			print_version
			exit 0
			;;
		:)
			print_error "option requires an argument -- '$OPTARG'"
			exit 1
			;;
		\?)
			print_error "unrecognized option -- '$OPTARG'"
			exit 1
			;;
	esac
done
shift $((OPTIND - 1))

pattern=$1

if [[ -z $pattern ]]; then
	print_error "${SCRIPT_NAME}: missing search pattern"
	exit 1
fi

if [[ ! -d $directory ]]; then
	print_error "${SCRIPT_NAME}: '$directory': No such directory"
	exit 2
fi

grep_option=-G
if [[ $ignore_case == true ]]; then
	grep_option+=i
fi
if [[ $line_number == true ]]; then
	grep_option+=n
fi

find -- "$directory" -type f -name "$find_name" -print0 \
	| xargs -0 grep "$grep_option" -e "$pattern" -- /dev/null

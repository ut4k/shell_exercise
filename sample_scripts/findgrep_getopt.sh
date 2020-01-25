#!/bin/bash

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

# parameters=$(getopt -n "$SCRIPT_NAME" \
parameters=$(/usr/local/opt/gnu-getopt/bin/getopt -n "$SCRIPT_NAME" \
	-o d:s:in \
	-l directory: -l suffix: -l ignore-case -l line-number \
	-l help -l version \
	-- "$@")

if [[ $? -ne 0 ]]; then
	echo 'Try --help option for more information' 1>&2
	exit 1
fi
eval set -- "$parameters"

directory=.
find_name='*'
ignore_case=
line_number=


while [[ $# -gt 0 ]]
do
	case "$1" in
		-d | --directory)
			directory=$2
			shift 2
			;;
		-s | --suffix)
			find_name="*$2"
			shift 2
			;;
		-i | --ignore-case)
			ignore_case=true
			shift 2
			;;
		-n | --line-number)
			line_number=true
			shift
			;;
		--help)
			print_help
			exit 0
			;;
		--version)
			print_version
			exit 0
			;;
		--)
			shift
			break
			;;
	esac
done

pattern=$1

if [[ -z $pattern ]]; then
	print_error "${SCRIPT_NAME}: missing search pattern"
	exit 1
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

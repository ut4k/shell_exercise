#!/bin/bash

# export PS4='-> '
export PS4='-> $LINENO: ' #行番号も出す

set -o xtrace

result=0

for number in "$@"
do
	result=$(expr "$result" + "$number")
done

printf '%s\n' "$result"

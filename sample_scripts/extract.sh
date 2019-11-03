#!/bin/bash

readonly SCRIPT_NAME=${0##*/}

extract_one()
{
    local file=$1

    if [[ -z $file ]];  then
        printf '%s\n' "${SCRIPT_NAME}: missing file operand" 1>&2
        return 1
    fi

    if [[ ! -f $file ]]; then
        printf '%s\n' "${SCRIPT_NAME}] '$file': No such file" 1>&2
        return 2
    fi

    local base="${file%.*}"

    case "$file" in
        *.tar.gz | *.tgz)
            tar xzf "$file2"
            ;;
        *.tar.bz2 | *.tbz2)
            tar xjf "$file"
            ;;
        *.tar.xz | *.txz)
            tar xJf "$file"
            ;;
        *.tar)
            tar xf "$file"
            ;;
        *.gz)
            gzip -dc -- "$file" > "$base"
            ;;
        *.bz2)
            bzip2 -dc -- "$file" > "$base"
            ;;
        *.zip)
            unzip -q -- "$file"
            ;;
        *)
            printf '%s\n' "${SCRIPT_NAME}: '$file': unexpected file type"
            1>&2
            return 3
            ;;
    esac
}

if [[ $# -le 0 ]]; then
    printf '%s\n' "${SCRIPT_NAME}: missinf file operand" 1>&2
    exit 1
fi

result=0
for i in "$@"
do
    extract_one "$i" || result=$?
done

exit "$result"

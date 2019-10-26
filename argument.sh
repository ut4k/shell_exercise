#!/bin/bash

print_argument()
{
    echo "\$0 = $0"
    echo "\$1 = $1"
    echo "\$2 = $2"
    echo "\$3 = $3"
    echo "\$# = $#"
}

print_argument aaa bbb

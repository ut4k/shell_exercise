#!/bin/bash

value=255
printf -v message 'value = 0x%x' "$value"
echo "message = [$message]"

printf -v message2 'aaabbbccc'
echo "message2 = [$message2]"

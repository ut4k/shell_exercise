#!/bin/bash

result=0

while IFS= read -r number
do
	((result+=number))
done

printf '%s\n' "$result"

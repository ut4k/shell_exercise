#!/bin/bash

i=0
while [[ $i -lt 10 ]]
do
  echo "$i"
  i=$((i + 3))
done

j=0
until [[ $j -gt 10 ]]
do
  echo "$j"
  j=$((j + 3))
done

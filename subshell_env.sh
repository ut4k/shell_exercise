#!/bin/bash

name=yuta
echo "$name"

(
  echo ' sub shell'
	echo " $name"
	name=kimura
	echo " $name"
)

echo "$name"

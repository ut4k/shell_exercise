#!/bin/bash

set -o errexit

date_string=$(date '+%Y-%m-%d')

echo 'create diary directory'
mkdir "diary/$date_string"
echo 'create diary file'
touch "diary/$date_string/1.txt"

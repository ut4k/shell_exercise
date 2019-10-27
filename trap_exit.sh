#!/bin/bash

trap 'echo recieve INT signal!; exit' INT

echo start
sleep 3
echo end

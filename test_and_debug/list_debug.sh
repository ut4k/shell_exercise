#!/bin/bash

cd /usr
ls

#一部だけxtraceを有効にすることも可能！

set -o xtrace
cd "$HOME"
ls
set +x xtace

cd /sys
ls

#!/bin/bash

#真なので1だから終了ステータスは 0
((5 > 3))
echo $?

#偽なので0だから終了ステータスは 1
((5 < 3))
echo $?

#!/bin/bash

result_number=0
i=1

while [[ $i -le $1 ]]
do
	((result_number+=i))
	((i++))
done

echo "$result_number"

#!/bin/bash

sum=0

for ((num = 1000; num<=2000; num++)); do
    strNum="$num"

    if [[ $strNum =~ ^[01]+$ ]]; then
	sum=$((sum + num))
    fi
done

echo "the sum of the numbers between 1000 and 2000 (inclusive) having
digits only from the set {0, 1} is" $sum


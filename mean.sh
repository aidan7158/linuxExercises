#!/bin/bash
if [ $# -lt 1 ]; then
  echo "usage: ./mean.sh <column> [file.csv]" 1>&2
  exit 1
fi

column=$1
file=${2:-/dev/stdin}

cut -d, -f"$column" "$file" | tail -n +2 | {
  sum=0
  count=0
  while read value; do
    sum=$(echo "$sum + $value" | bc)
    ((count++))
  done
  mean=$(echo "scale=2; $sum / $count" | bc)
  echo $mean
}

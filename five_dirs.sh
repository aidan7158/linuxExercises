#!/bin/bash

for ((i=1; i<=5; i++)); do
    mkdir -p dir$i
    
    for ((j=1; j<=4; j++)); do
        content=""
        for ((k=1; k<=j; k++)); do
            content="$content$j"
            if [ $k -lt $j ]; then
                content="$content
"
            fi
        done

        printf "%s" "$content" > dir$i/file$j
	printf "\n" >> dir$i/file$j
    done
done

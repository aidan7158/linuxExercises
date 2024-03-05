#!/bin/bash

for ((i=1; i<=5; i++)); do
    mkdir -p dir$i

    # Create four files file1 through file4 in each subdirectory
    for ((j=1; j<=4; j++)); do
        # Generate content for each file
        content=""
        for ((k=1; k<=j; k++)); do
            content="$content$j"
            if [ $k -lt $j ]; then
                content="$content
"
            fi
        done

        # Write content to the file using printf
        printf "%s" "$content" > dir$i/file$j
	printf "\n" >> dir$i/file$j
    done
done

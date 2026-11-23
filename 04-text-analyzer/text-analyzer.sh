#!/usr/bin/env bash

if [[ -f './romeo.txt' ]]; then
    echo 'File already exists!'
else
        echo 'Downloading File (Romeo and Juliet) ...'
        curl https://downloads.codingcoursestv.eu/055%20-%20bash/if/romeo.txt -o romeo.txt -s 
        if [[ $? -eq 0 ]]; then
            echo 'Download Completed successfully!'
        else
            echo 'Download Failed!' >&2
            exit 1
        fi 
fi

num_lines=$(grep -ci 'night' romeo.txt)
echo "The word 'night' appears ${num_lines// /} times in the file."


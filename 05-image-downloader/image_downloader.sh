#!/usr/bin/env bash

url='https://downloads.codingcoursestv.eu/055%20-%20bash/while/images/image-%%.jpg'

notfound=0
counter=1
while true; do
        echo "Downloading: ${url/\%\%/$counter}"
        if curl --fail "${url/\%\%/$counter}" -o "image-${counter}.jpg"; then
                echo '....'
                notfound=0
        else
                (( notfound = notfound + 1 ))
                if (( notfound >= 10 )); then
                        break
                fi
        fi
        (( counter = counter + 1 ))
done
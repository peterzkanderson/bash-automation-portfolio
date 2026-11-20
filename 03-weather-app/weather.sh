#!/usr/bin/env bash

api_url='https://downloads.codingcoursestv.eu/055%20-%20bash/api/api.php'

echo -n 'Please enter the city: '
read -r city

response="$(curl "${api_url}" -s -G --data-urlencode "city=${city}")"
temperature="$(echo "${response}" | jq '.temperature')"

# formula: fahrenheit = celsius * (9 / 5) + 32

temperatureF="$(echo "scale=2; ${temperature} * (9 / 5) + 32" | bc)"

echo "In ${city}, the current temperature is: ${temperature}°C"
echo "In ${city}, the current temperature is: ${temperatureF}°F"



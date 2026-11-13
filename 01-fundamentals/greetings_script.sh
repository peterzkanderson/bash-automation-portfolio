#!/usr/bin/env bash


# TEXT
declare -r text_green="$(tput setaf 2)"
declare -r text_bold="$(tput bold)"
declare -r text_reset="$(tput sgr0)"


# Name

read -p 'Please enter your name: ' name

echo
echo "${text_bold}Hello to this script, ${text_green}${text_bold}${name}${text_reset}!"

# Number of files on desktop

num_files_desktop="$(ls ~ | wc -l)"

echo
echo "${text_bold}Number of files in ${text_green}${name}'s${text_reset}${text_bold} directory: ${text_green}${num_files_desktop}${text_reset}"
echo '--------------------------------------'
echo


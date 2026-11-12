#!/usr/bin/env bash

declare -r text_red="$(tput setaf 1)"
declare -r text_green="$(tput setaf 2)"
declare -r text_blue="$(tput setaf 4)"
declare -r text_bold="$(tput bold)"
declare -r text_reset="$(tput sgr0)"
declare -r line="${text_green}${text_bold}________________________________________________________________________________ ${text_reset}"

# UPTIME-------------------------------------------------------------------------------

upt="$(uptime)"
pcpu="$(ps -ef --sort=-pcpu | head -n 4)"

echo
echo "${line}"
echo
echo "${text_blue}${text_bold}Getting the uptime of the system: ${text_reset}"
echo
echo "${text_bold}${upt}${text_reset}"
echo
echo "${text_blue}${text_bold}Top %CPU processes: ${text_reset}"
echo
echo "${text_bold}${pcpu}${text_reset}"
echo
echo "${line}"


# DISK SUMMARY-------------------------------------------------------------------------

disk_total="$(df -h | awk '$6 == "/" {print $2}')"
disk_used="$(df -h | awk '$6 == "/" {print $3}')"
disk_avail="$(df -h | awk '$6 == "/" {print $4}')"
disk_perc="$(df -h | awk '$6 == "/" {print $5}')"
mem_avail="$(free -h | grep 'Mem:' | awk '{print $7}')"

echo
echo "${text_blue}${text_bold}Storage & Memory: ${text_reset}"
echo
echo "${text_bold}Total: ${text_green}${disk_total}${text_reset} | ${text_bold}Used: ${text_red}${disk_used} (${disk_perc})${text_reset} | ${text_bold}Available Space: ${text_green}${disk_avail}${text_reset} | ${text_bold}Available Memory: ${text_reset}${text_green}${text_bold}${mem_avail}${text_reset}"
echo
echo "${line}"

# NETWORK & NGINX STATUS----------------------------------------------------------------

nginx_status="$(systemctl status nginx | grep 'Active:')"

echo
echo "${text_blue}${text_bold}Webserver Running?${text_reset}"
echo
echo "${text_blue}${text_bold}NGINX Status:${text_reset}${text_bold}${nginx_status}${text_reset}"
echo
echo "${line}"

# PING GOOGLE---------------------------------------------------------------------------

ping_status="$(ping -c 4 google.com | grep 'packet loss')"

echo
echo "${text_blue}${text_bold}Internet Connection Test: ${text_reset}"
echo
echo "${text_bold}${ping_status}${text_reset}"
echo
echo "${line}"
echo


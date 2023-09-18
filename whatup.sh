#!/usr/bin/env bash

BOLD=$(tput bold)
NORMAL=$(tput sgr0)
CYAN='\033[0;36m'
NC='\033[0m' # No Color

get_listening_ports() {
  # lsof -i -sTCP:LISTEN | grep -Eo "[a-zA-Z0-9]* \(" | cut -d' ' -f1 | sort -u
  lsof -i -P -sTCP:LISTEN
}

get_top_mem_processes() {
  ps -ax -o user,%mem,command --sort -rss | head -n 8
}
 

get_top_cpu_processes() {
  ps -ax -o user,%cpu,command --sort -%cpu | head -n 8
}
 
_section() {
  echo -e "${CYAN}${BOLD}${1}${NORMAL}${NC}"; shift;
  echo
  eval "$@"
  echo; echo;
}


_section "Listening TCP ports" "get_listening_ports"
_section "Logged in users" "w"
_section "Top processes (memory usage)" "get_top_mem_processes | cut -c1-120"
_section "Top processes (CPU usage)" "get_top_cpu_processes | cut -c1-120"
_section "Storage" "lsblk | grep -v '^loop'; echo; df -h | grep -v /dev/loop | grep -v '^tmpfs'"

#!/bin/bash
SPIN=('|' '/' '-' '\' '|' '/' '-' '\')

BOLD="\e[01m"
BG="\e[48;2;127;0;0m"
FG="\e[38;2;128;255;255m"
BOLD="\e[01m"
RESET="\e[2K\e[0E\e[m"
STYLE=${BOLD}${FG}

printf ${STYLE}
for i in {30..0}; do

  for j in {0..7}; do
    printf "\e[2K\e[0E"
    printf "...%d%s" "${i}" "${SPIN[${j}]}"
    sleep 0.125
  done
done
printf ${RESET}

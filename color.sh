#!/bin/bash

for i in {1..255}
do 
printf "\e[38;5;%dm■" $i 
done

echo -e "end\e[m"


for r in {32..0}
do
	((b = 32 - r ))
	for g in {0..32}
	do
		printf "\e[48;2;%d;%d;%dm  " $((r<<3)) $((g<<3)) $((b<<3))
	done
	echo ""
done
echo -e "\e[mend"


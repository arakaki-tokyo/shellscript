#!/bin/bash

rgb_curve(){

	x=$1
	((x %= 192))
	if (($1 < 0)); then
		((x += 192))
	fi

	if ((x <= 0)); then
		return 0
	elif ((x < 32)); then
		return $(((x << 3) - 1))
	elif ((x < 96)); then
		return $(((16 << 4) - 1))
	elif ((x < 128)); then
		return $((((128 - x) << 3) - 1))
	elif ((x < 192)); then
		return 0
	fi
}

for i in {1..32}
do
	for j in {-32..160}
	do
		rgb_curve $((j - 64)); r=$?
		rgb_curve j; g=$?
		rgb_curve $((j + 64)); b=$?
		printf "\e[48;2;%d;%d;%dm " $r $g $b
	done
	echo ""
done

echo -e "\e[m"


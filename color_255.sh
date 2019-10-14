#!/bin/bash

for i in {0..15}
do 
	for j in {0..15}
	do
		((c = i * 16 + j))
		printf "\e[38;5;%dm%02X " $c $c 
	done
	echo ""
done


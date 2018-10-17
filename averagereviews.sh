#!/bin/sh

for file in $( ls $1 ); do
	echo $file $(grep "<Overall>" "$1/$file" | sed -e 's/<Overall>//g' | awk '{SUM+=$1} END {print SUM/NR}') | sed -e 's/.dat//g'
done | sort -k2nr


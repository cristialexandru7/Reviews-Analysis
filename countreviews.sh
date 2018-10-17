#!/bin/sh

for file in $( ls    $1 ); do
	echo $file $(grep -c "<Author>" "$1/$file") | sed -e 's/.dat//g'
done | sort -k2nr


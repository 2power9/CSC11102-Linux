#!/bin/bash

# Ho va ten: Tran Nguyen Hue Nhu
# MSSV: 19120628

# Cau 2
countWords() {
	count=0
	while IFS= read -r line
	do
		for word in $line
		do
			((++count))
		done
	done < $input
	echo "There are $count words in $input"
}

# Cau 3
listWords() {
	echo "Content of $input:"
	while IFS= read -r line
	do
		echo -n "$line "
	done < $input
	echo ""
}

findWord() {
	echo -n "Type word: "
	read find_word
	count=0
	while IFS= read -r line
	do
		for word in $line
		do
			if [ $word == $find_word ]
			then
				((++count))
			fi
		done
	done < $input
	echo "$find_word appear $count time(s)."
}

input=$1
countWords
listWords
findWord
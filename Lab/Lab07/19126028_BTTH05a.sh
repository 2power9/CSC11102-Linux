#!/bin/bash

# Ho va ten: Tran Nguyen Hue Nhu
# MSSV: 19126028

# Cau 2
getLengthList() {
	echo "Length of array: ${#a[*]}"
}

# Cau 3
displayList() {
	getLengthList
	echo "Element(s) of array: ${a[*]}"
}

# Cau 4
getEvenNumbers() {
	echo -n "Even element(s) of array:"
	for num in ${a[*]}
	do
		if [ $(($num%2)) -eq 0 ]
		then
			echo -n " $num"
		fi
	done
	echo ""
}

# Cau 5
getOddNumbers() {
	echo -n "Odd element(s) of array:"
	for num in ${a[*]}
	do
		if [ $(($num%2)) -eq 1 ]
		then
			echo -n " $num"
		fi
	done
	echo ""
}

# Cau 6
getMax() {
	max=${a[0]}
	for num in ${a[*]}
	do
		if [ $max -lt $num ]
		then
			let max=$num
		fi
	done
	echo "Maximum element of array: $max"
}

# Cau 7
getMin() {
	min=${a[0]}
	for num in ${a[*]}
	do
		if [ $min -gt $num ]
		then
			let min=$num
		fi
	done
	echo "Minimum element of array: $min"
}

# Cau 8
getValueAt() {
	echo -n "Type position: "
	read pos
	if [ $pos -ge ${#a[*]} ]
	then
		echo "Index out of range"
		return
	fi
	echo "Element at position $pos is ${a[pos]}"
}

# Cau 9
input=$1
declare -a a
IFS=$'\n' read -d '' -r -a line < "$input"
a=(${line[*]})

displayList
getEvenNumbers
getOddNumbers
getMax
getMin
getValueAt
unset a
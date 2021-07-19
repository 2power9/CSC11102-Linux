#!/bin/bash

# Ho va ten: Tran Nguyen Hue Nhu
# MSSV: 19126028

# Cau 1
showHelp() {
	echo "Usage: $0 [-h|--help] [--min] [--max] [-d|--display] [-s|--sort] day_so_cach_nhau_khoang_trang"
}

displayNumbers() { # day so
	echo "Array is: $*"
}

getMin() {
	if [ $# -lt 1 ]
	then
		echo "NaN"
		return
	fi
	local min=$1
	for num in $*
	do
		if (($min>$num))
		then
			((min=$i))
		fi
	done
	echo "min = $min"
}

getMax() { # day so
	if [ $# -lt 1 ]
	then
		echo "NaN"
		return
	fi
	local max=$1
	for num in $*
	do
		if (($max<$num))
		then
			((max=$num))
		fi
	done
	echo "max = $max"
}

sortList() {	# day so
	a=("$@")
	let n=${#a[@]}
	for ((i=0; i<$n; ++i))
	do
		for ((j=$i+1; j<$n; ++j))
		do
			if [ ${a[i]} -gt ${a[j]} ]
			then
				let temp=${a[i]}
				let a[i]=${a[j]}
				let a[j]=$temp
			fi
		done
	done
	echo "Array after sorting: ${a[*]}" 
}

flag_help=false
flag_min=false
flag_max=false
flag_display=false
flag_sort=false

for i in $*
do
	case "$1" in
		-h|--help)
			flag_help=true
			shift
			;;
		--min)
			flag_min=true
			shift
			;;
		--max)
			flag_max=true
			shift
			;;
		-d|--display)
			flag_display=true
			shift
			;;
		-s|--sort)
			flag_sort=true
			shift
			;;
	esac
done

if $flag_help
then
	showHelp
fi

if $flag_min
then
	getMin $*
fi

if $flag_max
then
	getMax $*
fi

if $flag_sort
then
	sortList $*
fi

if $flag_display
then
	displayNumbers $*
fi
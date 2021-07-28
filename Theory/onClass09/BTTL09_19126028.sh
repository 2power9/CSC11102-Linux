#!/bin/bash

# Ho va ten: Tran Nguyen Hue Nhu
# MSSV: 19126028

# Cau 2
showHelp() {
	echo "Usage: $0 [-h|--help] [-s|--sum] [-m|--mult] [-o|--odd] [-e|--even] [-d|--display] [--sort] day_so_cach_nhau_khoang_trang"
}

# Cau 3
displayNumbers() {
	echo "Array element(s): ${a[*]}"
}

# Cau 4
getOdd() {
	echo -n "Odd element(s): "
	for num in ${a[*]}
	do
		if [ $(($num%2)) -eq 1 ]
		then
			echo -n "$num "
		fi
	done
	echo ""
}

# Cau 5
getEven() {
	echo -n "Even element(s): "
	for num in ${a[*]}
	do
		if [ $(($num%2)) -eq 0 ]
		then
			echo -n "$num "
		fi
	done
	echo ""
}

# Cau 6
getSum() {
	sum=0
	for num in ${a[*]}
	do
		let sum+=$num
	done
	echo "Sum of array: $sum"
}

# Cau 7
getMult() {
	product=1
	for num in ${a[*]}
	do
		let product*=$num
	done
	echo "Product of array: $product"
}

# Cau 8
sortArray() {
	n=${#a[*]}
	for ((i=0;i<$n-1;++i))
	do
		for ((j=i+1;j<$n;++j))
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

# Cau 9

flag_help=false
flag_sum=false
flag_mult=false
flag_odd=false
flag_even=false
flag_dislay=false
flag_sort=false
for i in $*
do
	case $1 in
		-h|--help)
			flag_help=true
			shift
			;; 
		-s|--sum)
		flag_sum=true
		shift
		;;
		-m|--mult)
		flag_mult=false
		shift
		;;
		-o|--odd)
		flag_odd=true
		shift
		;;
		-e|--even)
		flag_even=true
		shift
		;;
		-d|--display)
		flag_dislay=true
		shift
		;;
		-s|--sort)
		flag_sort=true
		shift
		;;
		*)
			break
	esac
done

declare -a a
a=($*)

if $flag_help 
then
	showHelp
fi

if $flag_sum
then
	getSum
fi

if $flag_mult
then
	getMult
fi

if $flag_odd
then
	getOdd
fi

if $flag_even
then
	getEven
fi

if $flag_dislay
then
	displayNumbers
fi

if $flag_sort
then
	sortArray
fi

unset a
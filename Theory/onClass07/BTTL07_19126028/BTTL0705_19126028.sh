#! /bin/bash

if [ $# -lt 3 ]
then
	echo "help: $0 [--n|--e] input_file output_file"
	exit 0
fi

read_line=false
ROT13=false
while [ true ]
do
	case $1 in
	--n)
		read_line=true
		shift
		;;
	--e)
		ROT13=true
		shift
		;;
	*)
		break
		;;
	esac
done

if ! [ -e $1 ] || ! [ -f $1 ] 
then
	echo "$1 error"
	exit 0
fi

if $read_line
then
	echo -n "Type number of lines: "
	read n
	text=`head -$n $1`
else
	text=`cat $1`
fi

if $ROT13
then
	tr 'A-Za-z' 'N-ZA-Mn-za-m' <<< $text > $2
else
	echo $text > $2
	echo "here"
fi
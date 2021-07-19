#! /bin/bash
if ! [ $# -eq 3 ] 
then
	echo "help: $0 num1 [+ | - | x | / ] num2"
	exit 0
fi

echo -n "$1 $2 $3 = "
case $2 in
	+)
		echo $(($1+$3))
		;;
	-)
		echo $(($1-$3))
		;;
	x)
		echo $(($1*$3))
		;;
	/)
		echo $(($1/$3))
		;;
	*)
		echo "help: $0 num1 [+ | - | x | / ] num2"
		;;
esac
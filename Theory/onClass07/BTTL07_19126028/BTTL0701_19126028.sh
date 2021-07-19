#! /bin/bash
if [ $# -lt 1 ]
then
	echo "help: $0 nums (having space)"
	exit 0
fi

for num in $*
do
	echo $num
done
#! /bin/bash
if [ $# -lt 2 ]
then
	echo "help: $0 factor nums (having space)"
	exit 0
fi

factor=$1
shift
for num in $*
do
	echo -n "$((num*factor)) " 
done
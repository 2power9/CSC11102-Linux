#! /bin/bash
if [ $# -lt 1 ]
then
	echo "help: $0 strings (with quotations)"
	exit 0
fi

for s in "$@"
do
	echo $s
done
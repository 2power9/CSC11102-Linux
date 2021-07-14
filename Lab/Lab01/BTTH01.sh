#! /bin/bash
#Ho va ten: Tran Nguyen Hue Nhu
#MSSV: 19126028
#Ten bai tap: BTTH01

# cau 2
echo "Hello world"

# cau 4
MESSAGE="Hello world"
echo $MESSAGE

#cau 5
echo -n "Type number: "
read num

if [ $num -eq 0 ]
then
	echo "So $num la so 0."
elif [ $num -gt 0 ]
then
	echo "So $num la so duong."
else
	echo "So $num la so am."
fi

#cau 6
echo -n "Type number: "
read num

if [ $(($num%2)) -eq 0 ]
then
	echo "So $num la so chan."
else
	echo "So $num la so le."
fi

#cau 7
echo -n "Type number: "
read n
for (( i=0; i <= $n; ++i )) 
do
	echo -n "$i "
done

#!/bin/sh
sum=0
for num in $*
do
	sum=`expr $sum + $num`
done
echo $sum

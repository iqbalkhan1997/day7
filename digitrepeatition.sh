#!/bin/bash -x

for ((i=1;i<=9;i++))
do

	arr[i]=$((11*$i));
	echo "repeated number from 0 to 99 is ${arr[i]}";
done

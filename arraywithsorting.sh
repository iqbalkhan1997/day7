#!/bin/bash -x

for ((i=0;i<=9;i++))
do
	random[i]=$((RANDOM%900+100));
done

echo "before sorting ${random[@]}";

for ((i=0;i<${#random[@]}-1;i++))
do
	for ((j=$(($i+1));j<${#random[@]};j++))
	do
		if [ ${random[i]} -gt ${random[j]} ]
		then
			temp=${random[i]};
			random[$i]=${random[j]};
			random[$j]=$temp;
		fi
	done
done

echo "After sorting an array : " ${random[@]};

secondlargest=${random[8]};
secondsmallest=${random[1]};

echo "second largest number is : " $secondlargest;
echo "second smallest number is : " $secondsmallest;

#!/bin/bash -x

for ((i=0;i<=9;i++))
do
	random[i]=$((RANDOM%900+100));
done

op="";

for ((i=0;i<=9;i++))
do
	if [ $i -eq 0 ]
	then
		n="${random[i]}";
	else
		n="$op\n${random[i]}";
	fi
	op=`echo $n`;
done

echo -e $op;

secondlargest=`echo -e $op | sort | tail -2 | head -1`;
secondsmallest=`echo -e $op | sort | head -2 | tail -1`;

echo "second largest random number is " $secondlargest;
echo "second smallest random number is " $secondsmallest;

echo ${random[@]};

#!/bin/bash -x

read -p "enter the 1st number : " n1;
read -p "enter the 2nd number : " n2;

echo "$n1";
echo "$n2";

temp=$n1;
n1=$n2;
n2=$temp;

n1=$(($n1+$n2));
n2=$(($n1-$n2));
n1=$(($n1-$n2));

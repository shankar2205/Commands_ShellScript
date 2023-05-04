#!/bin/bash -x

echo "Enter Three Numbers :"
read a
read b
read c

array[0]=$(awk 'BEGIN {print '$a' + '$b' * '$c'}')
array[1]=$(awk 'BEGIN {print '$a' % '$b' + '$c'}')
array[2]=$(awk 'BEGIN {print '$b' / '$a' + '$c'}')
array[3]=$(awk 'BEGIN {print '$a' * '$b' + '$c'}')
echo "1. a + b * c = ${array[0]}"
echo "2. a % b + c = ${array[1]}"
echo "3. c + a / b = ${array[2]}"
echo "4. a * b + c = ${array[3]}"
max=0
min=10000
for i in "${array[@]}"
do
	if [ $i -gt $max ]
	then
		max=$i
        fi

		if [ $i -lt $min ]
		then
			min=$i
		fi
done

echo " Maximum Value is : $max"
echo " Minimum Value is : $min"


#!/bin/bash -x


for (( i=0; i<10; i++ ))
do
        array[i]=$((RANDOM%900+100));
done

echo "${array[@]}";
largest=${array[0]}
second_largest=${array[0]}

for (( i=0; i<10; i++ ))
do
        if [ ${array[i]} -lt $largest ]
        then
                second_largest=$largest;
                largest=${array[i]};
        elif [ ${array[i]} -ne $largest -a ${array[i]} -lt $second_largest ]
        then
                second_largest=${array[i]};
        fi
done
echo "Second Smallest Value is $second_largest"

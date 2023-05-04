#!/bin/bash -x

echo "Enter Number Ending With Zero - Ex: 10,100,1000,1000....etc"

read Num
doubledigit=10;
tribledigit=100;
fourdigit=1000;
fivedigit=10000;

case $Num in
	$doubledigit) 
		echo "You Entered Double digit Value."
			;;
	$tribledigit)
		echo "You Entered Trible digit Value."
			;;
	$fourdigit)
		echo "You Entered Four digit Value."
			;;
	$fivedigit)
		echo "You Entered Five digit Value."
			;;
	*) echo "Please Enter Less than six digit value."
			;;
esac

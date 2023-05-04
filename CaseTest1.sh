#!/bin/bash -x

echo "Enter Value for A :"
read A
echo "Enter Value for B :"
read B
echo "Enter 1 for Addition, 2 for Subtraction"
read choice

case $choice in
	1)echo "Addition of $A and $B is" $( expr $A + $B ) ;;
	2)echo "Subtraction of $A and $B is " $( expr $A - $B ) ;;
	*)echo "Enter Either 1 or 2."
esac

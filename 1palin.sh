#!/bin/bash -x

function palindrome(){
	((n=$1))
	lastDigit=0
	rev=0

	while [ $n -gt 0 ]
do
	lastDigit=$(( $n%10 ))
	rev=$(( $rev*10+$lastDigit ))
	n=$(( $n/10 ))
done

if [ $rev -eq $1 ]
then
	echo "$1 is palindrome"
else
	echo "$! is not palindrome"
fi

}

read -p "Enter first number :" naum1
read -p "Enter second number :" num2
palindrome $num1
palindrome $num2

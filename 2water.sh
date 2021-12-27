#!/bin/bash

#To choose which conversion you want
echo "1.celcius to farenheit."
echo "2.farenheit to celcius."

#To declare user taking variable
read -p "enter your choice : " choice
read -p "enter the dgree you want to convert : " degree

#This line is just making function and giving the name is UnitConversion
function Unitconversion()
{
case "$choice" in
1)
if(( $degree>0 && $degree<100 ))
then
degF=$(( ($degree * 9/5) + 32 ))
	echo $degF
else
	echo "Out of Given Range"
    fi
  	;;

  2)
    	if(( $degree>32 && $degree<212 ))
then
    degC=$(( ($degree - 32) * 5/9 ))

echo $degC

else
      echo "Out of Given Range"
fi
  	;;
      	*)
    echo "Out of Given Range"
          ;;
esac
}

#This below line is for printing the final result
Finalresult=$(Unitconversion $choice $degree)
echo $Finalresult

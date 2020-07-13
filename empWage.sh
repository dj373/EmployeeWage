#! /bin/bash -x
isPartTime=1
isFullTime=2
empCheck=$(( RANDOM%3 ))
empRatePerHr=20
case $empCheck in
	$isFullTime)
        	empHrs=8;
		;;
	$isPartTime)
	        empHrs=4
		;;
	*)
        	empHrs=0
		;;
esac
salary=$(( $empRatePerHr * $empHrs ))
echo "Salary is " $salary

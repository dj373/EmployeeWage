#! /bin/bash -x
isPartTime=1
isFullTime=2
randomCheck=$(( RANDOM%3 ))
empRatePerHr=20
if [ $isFullTime -eq $randomCheck  ]
then
        empHrs=8;
elif [ $isPartTime -eq $randomCheck ]
then
        empHrs=4
else
        empHrs=0
fi
salary=$(( $empRatePerHr * $empHrs ))
echo "Salary is " $salary

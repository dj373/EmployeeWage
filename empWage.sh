#! /bin/bash -x
isPresent=1
randomCheck=$(( RANDOM%2 ))

if [ $isPresent -eq $randomCheck  ]
then
	empRpH=20;
	empHr=8;
	salary=$(( $empRpH * $empHr ))
else
	salary=0;
fi

#! /bin/bash -x
#CONSTANTS
IS_PART_TIME=1
IS_FULL_TIME=2
MAX_HRS_IN_MONTH=10
EMP_RATE_PER_HR=20
NUM_WORKING_DAYS=20

#VARIABLES
totalEmpHr=0
totalWorkingDays=0

function getWorkingHours() {
	case $1 in
                $IS_FULL_TIME)
                        workHrs=8;
                        ;;
                $IS_PART_TIME)
                        workHrs=4
                        ;;
                *)
                        workHrs=0
                        ;;
        esac
	echo $workHrs
}

while [[ $totalEmpHr -lt $MAX_HRS_IN_MONTH &&
        $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
        (( totalWorkingDays++ ))
        workingHours="$( getWorkingHours $(( RANDOM%3 )) )"
        totalEmpHrs=$(( $totalEmpHrs+$workingHours ))
done
totalSalary=$(( $totalEmpHrs+$EMP_RATE_PER_HR ))

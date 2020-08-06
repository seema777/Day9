#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program On Master Branch"

#!/bin/bash -x
isPersent=1
randomcheck=$(( $RANDOM%2 ))
if [[ $isPersent -eq $randomcheck ]]
then
  echo "Employee is Persent"
else
  echo "Employee is Absent"
fi

#!/bin/bash -x
isPersent=1;
randomcheck=$(( $RANDOM%2 ));
if [ $isPersent -eq $randomcheck ]
   then
       empRatePerHr=20;
       empHrs=8;
       salary=$(( $empRatePerHr*$empHrs ));
  else
       salary=0;
fi

#!/bin/bash -x
isPartTime=1;
isFullTime=2;
 empRatePerHr=20;
randomcheck=$(( $RANDOM%3 ));
if [ $isPartTime -eq $randomcheck ]
   then
       empHrs=4;
  elif [ $isFullTime -eq $randomcheck]
      then
       empHrs=8;
  else
       empHrs=0;
fi
       salary=$(( $empRatePerHr*$empHrs ));


#!/bin/bash -x
isPartTime=1;
isFullTime=2;
empRatePerHr=20;
randomcheck=$(( $RANDOM%3 ));
case $randomcheck in
        $isPartTime)
        empHrs=4;
           ;;
        $isFullTime)
        empHrs=8;
           ;;
        *)
        empHrs=0;
           ;;
esac
       salary=$(( $empRatePerHr*$empHrs ));


#!/bin/bash -x
isPartTime=1;
isFullTime=2;
empRatePerHr=20;
totalsalary=0;
numworkingdays=20;
for ((day=1;day<=$numworkingdays;day++))
do
randomcheck=$(( $RANDOM%3 ));
case $randomcheck in
        $isPartTime)
        empHrs=4;
           ;;
        $isFullTime)
        empHrs=8;
           ;;
          *)
        empHrs=0;
           ;;
esac
        salary=$(( $empRatePerHr*$empHrs ));
        totalsalary=$(( $totalsalary+$salary ))
done


#!/bin/bash -x

IS_PART_TIME=1;
IS_PART_TIME=2
MAX_HRS_IN_MONTH=10;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

totalEmpHrs=0;
totalWorkingDays=0;

while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $TOTAL_WORKINGDAYS -lt $NUM_WORKING_DAYS ]]
do
((totalworkingDays++))
empcheck=$(($RANDOM%3));
case $empcheck in
  $IS_FULL_TIME)
   empHrs=8
    ;;
  $IS_PART_TIME)
   empHrs=4
    ;;
   *)
   empHrs=0;
    ;;
esac
totalEmpHrs=$(( $totalEmpHrs + $empHrs ));
done


#!/bin/bash -x

IS_PART_TIME=1;
IS_PART_TIME=2
MAX_HRS_IN_MONTH=10;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

totalEmpHrs=0;
totalWorkingDays=0;

function getWorkHrs(){
local empCheck=$1
case $empCheck in
  $IS_FULL_TIME)
      empHrs=8
         ;;
  $IS_PART_TIME)
       empHrs=4
   ;;
  *)
    empHrs=0
        ;;
esac
echo $empHrs
}
while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
((totalWorkingDays++))
empCheck=$(($RANDOM%3));
empHrs=$( getWorkHrs $empCheck )
totalEmpHrs=$(( $totalEmpHrs + $empHrs ));
dailyWage[$totalWorkingDays]=$(( $empHrs*$EMP_RATE_PER_HR ))
((count++));
done
echo $count;
totalSalary=$(($totalEmpHrs*$EMP_RATE_PER_HR))


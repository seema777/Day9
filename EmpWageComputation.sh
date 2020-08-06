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

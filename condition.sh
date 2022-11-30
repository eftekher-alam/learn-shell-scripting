#Diffrent type of integer compare.

age=21
if [ $age -lt 20 ]
then
    echo "You are not eligable to enter the show"
fi


if (($age > 20))
then
    echo "You are not eligable to enter the show"
else 
    echo "You are eligable to enter the show"
fi

if [ $age -eq 20 ]
then   
    echo "We are same age."
elif [ $age -gt 20 ]
then 
    echo "Your are senior."
elif [ $age -ge 20 ]
then
    echo "Your are might be senior."
else
    echo "Your are jonior."
fi


name="Eftekher"

if [ $name == "eftekher" ]
then
    echo "You are Eftekher"
else
    echo "You are not Eftekher"
fi

# AND, OR logical operator.

if [ $age -ge 10 ] && [ $age -le 20 ] #AND operator
then 
    echo "You aer tinage"
else
    echo "Your are not tinager."
fi

if [ $age -ge 10 ] || [ $age -le 20 ] #OR operator
then 
    echo "You are ok"
else
    echo "Your are not ok."
fi


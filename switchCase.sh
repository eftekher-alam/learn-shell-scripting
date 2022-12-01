vehicle="Car"
currentObj=""

case $vehicle in
    "Car" )
        echo "This is a $vehicle"
        echo "This is line 2"
        currentObj=$vehicle;;
    "Truck" )
        echo "This is a $vehicle";;
    "Bus" )
        echo "This is a $vehicle";;
    * )
        echo "Unknown vehicle";;
esac
echo "The value you are watching from current Object :" $currentObj

#for new line
echo
echo 


read -p "Any input : " input

case $input in
    [a-z] )
        echo "Small single english alphabets";;
    [A-Z] )
        echo "Capital single english alphabets";; #if input is Capital though print first condition then run in terminal "LANG=C"
    [0-9] )
        echo "Numbers";;
    ? )
        echo "Special single Character";;
    * )
        echo "Unknown character";;
esac

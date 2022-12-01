numbers=(20 1 40 31 200)

#foreach loop
echo "foreach loop"
for x in ${numbers[@]}
do 
    echo $x
done


#for by in keyword
for x in 1 2 3 4 5 
do
    echo "for loop in $x"
done


#for by giving increment 
for x in {1..10..3} #initial x=1, until 100, increment by 3
do
    echo "for loop increment : $x"
done


#treditional for loop
for (( x=1; x<=20; x++))
do
    echo "Traditional for loop $x"
done


#while loop
echo "while loop"
n=0
while [ $n -le 4 ]
do
    echo "Loop $n"
    (( n++ ))
done

total=0
for x in ${numbers[@]}
do
    if [ $x -eq 100 ]
    then
        echo "$x found in the list"
        break # this will break the loop
    elif [ $x -eq 40 ]
    then
        echo "don't execute anything after that"
        continue   # if this condition is true above statement will execute and next also will execute and loop will be continued.
    fi
    (( total++ ))
    echo "Outside of if $total"
done
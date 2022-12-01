friends=()
echo "Printing empty array ${friends[@]}"

friends=( 'Eftekher' 'Alam' 'shuvo' 'Lipi' 'Akter' ) #this is string array
unset friends[1] #delete the value of 1th index which is Alam
echo "Full array : ${friends[@]}"  
echo "2th index's value : ${friends[2]}" 

echo "All index numbers : ${!friends[@]}" 
echo "Length of the array is : ${#friends[@]}" 
x=$(( ${#friends[@]} - 1 )) #substruact 1 from length 
echo $x

#append in array
friends[5]="Karim"
echo ${friends[5]}

#append at the last of the array
friends[ $(( ${#friends[@]} )) ]="Khelada"  # ${#friends[@]} this will provide us length so lastindex=length-1 
echo ${friends[6]}


#Sorting array
numbers=( 10 31 20 4 55 6 70 )
echo ${numbers[@]}
echo ${numbers[6]}

IFS=$'\n' asorted=($(sort -n <<<"${numbers[*]}")); unset IFS #ascending order. -n means all digit 
IFS=$'\n' dsorted=($(sort -nr <<<"${numbers[*]}")); unset IFS #descending order -r means reverse
echo ${asorted[@]}
echo ${dsorted[@]}


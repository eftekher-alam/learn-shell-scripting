echo -n "Enter Brust Time : "
read -a BT 

WT=(0) #First process wait 0 second

for (( i=0; i<2; i++)) #we have already assigned 0 Waiting time for P1, now just have to find P2 and P3. so loop will fun for two times
do
    echo "loop $i"
    WT[ ${#WT[@]} ]=$(( ${WT[$i]} + ${BT[$i]} )) 
done

echo "Waiting time : ${WT[@]}"

avg=0
for x in ${WT[@]}
do
    avg=$(( $avg + $x))
done
avg=$(( $avg / ${#WT[@]} ))
echo "Average waiting time : $avg"
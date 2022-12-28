declare -A array[i]=$((RANDOM%900+100))
echo "Random three digit number is:$random"
max1=${array[1]}
max2=${array[1]}
min1=${array[1]}
min2=${array[1]}

for i in ${array[@]};
do
if [ $i -gt $max1 ];
then
max2=$max1
max1=$i
elif [ $i -gt $max2 && $i -ne $max1 ];
then 
max2=$i
fi
if [ $i -lt $min1 ];
then 
min2=$min1
min1=$i
elif [ $i -lt $min2 && $i -ne $min1 ];
then
min2=$i
fi
done
echo "Second largest: $max2"
echo "Second smallest: $min2"

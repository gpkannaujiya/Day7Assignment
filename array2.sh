for (( i=0; i<10; i++ ))
do
array[i]=$((RANDOM % 900 + 100))
done
sort1=($(sort -n <<< "${array[*]}"))
max2=${sort1[-2]}
min2=${sort1[1]}
echo "2nd largest: $max2"
echo "2nd smallest: $min2"

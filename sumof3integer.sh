a=$((RANDOM % 21 - 10))
b=$((RANDOM % 21 - 10))
c=$((RANDOM % 21 - 10))
if [ $((a + b + c)) -eq 0 ]
then
echo "The sum of $a,$b and $c is zero"
else
echo "The sum of $a,$b and $c is not zero"
fi

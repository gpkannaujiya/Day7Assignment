repeated_num=()
for i in $(seq 0 100);
do
num="$i"
for (( j=0; j<${#num}; j++ ));
do
if [[ "${num:$j:1}" = "${num:$((j+1)):1}" ]];
then
repeated_num+=(${num:$j:1})
repeated=true
break
fi
done
done
echo "${repeated_num[@]}"

#! /bin/bash

echo "Welcome to Arithmetic Computation and Sorting"

read -p "Enter a : " a
read -p "Enter b : " b
read -p "Enter c : " c
echo "a=$a  b=$b  c=$c"

result1=$((a+b*c))
echo "$a+$b*$c =$result1"
result2=$((a*b+c))
echo "$a*$b+$c =$result2"
result3=$((c+a/b))
echo "$c+$a/$b =$result3"
result4=$((a%b+c))
echo "$a%$b+$c =$result4"

DICT[result1]=$result1
DICT[result2]=$result2
DICT[result3]=$result3
DICT[result4]=$result4

Arr[0]=${DICT[result1]}
Arr[1]=${DICT[result2]}
Arr[2]=${DICT[result3]}
Arr[3]=${DICT[result4]}
echo "Array=(${Arr[@]})"

for ((i=0;i<3;i++))
do
	for ((j=i+1;j<3;j++))
	do
		if [ ${Arr[i]} -lt ${Arr[j]} ]
		then
			temp=${Arr[i]}
			Arr[$i]=${Arr[j]}
			Arr[$j]=$temp
		fi
	done
done
echo "Descending Order= (${Arr[@]})"

for ((i=0;i<3;i++))
do
   for ((j=i+1;j<3;j++))
   do
      if [ ${Arr[i]} -gt ${Arr[j]} ]
      then
         temp=${Arr[i]}
         Arr[$i]=${Arr[j]}
         Arr[$j]=$temp
      fi
   done
done
echo "Ascending Order= (${Arr[@]})"

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

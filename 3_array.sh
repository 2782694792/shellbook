#! /bin/bash

# Only one-dimensional arrays are supported

## Parentheses denote, separated by Spaces
value0="00"
value1="01"
value2="02"
value3="03"
array_name=($value0 $value1 $value2 $value3)
for i in ${array_name[@]}; do
    echo $i
done

array_name=(
    A 
    B 
    "C" 
    D
)

## read elements
echo 
array_name[0]=va0000000000000
echo ${array_name[0]} # va0000000000000
array_name[1]=val111111111
array_name[v]=${array_name[1]}
echo ${array_name[0]} # val111111111


## read all elements
echo
echo 'print all elements'
echo ${array_name[@]}

## read element
echo 
echo 'read element with index 1'
val1=${array_name[1]}
echo $val1

## get length
echo 
echo 'get length with the array, \$array_name'
length=${#array_name[@]}
echo $length
length=${#array_name[*]}
echo $length
echo 'get length in single elements with index n'
lengthn=${#array_name[2]}
echo ${array_name[2]} $lengthn # valueee3 8


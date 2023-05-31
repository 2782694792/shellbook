#! /bin/bash

## concatenate
echo
echo "double quotes concatenate"
your_name="runoob"
### used double quotes
greeting="hello, "$your_name" !"
greeting_1="hello, ${your_name} !"
echo $greeting  $greeting_1

### used single quotes
echo
echo 'single quotes concatenate'
greeting_2='hello, '$your_name' !'
greeting_3='hello, ${your_name} !'
echo $greeting_2  $greeting_3

## length and index
echo 
echo 'get length by '$your_name''
echo length: ${#your_name} # 6
echo \[0\] length: ${#your_name[0]} # 6

## substring
echo
str="this is a shell partice, the number of first index is zero!"
echo "number 10 through 15 :"
echo ${str}
echo "${str:10:5}" # shell

## find substring
echo
echo 'find first char index by custom symbol 'i' or 'o''
str="runoob is a great site"; echo $str
echo `expr index "$str" io` # 4

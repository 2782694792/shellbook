#! /bin/bash

# test: determine whether the condition is true in number, char and file

# test number
## test equal and less greater
num1=100
num2=200
if test $[num1] -eq $[num2]
then
    echo '两个数相等！'
elif test ${num1} -lt $[num2] 
then
    printf '%s <= %f\n' $[num1] ${num2} 
fi

## performing arthmetic operation through the symbol of "[ ]" 
a=5;b=6
result=$[a+b] # 注意等号两边不能有空格
echo -e "\nresult 为： $result\n"

# test string
## = != -z -n
num1="ru1noob"
num2="runoob"
if test $num1 = $num2
then
    printf '两个字符串相等!'
elif test -n $[num1]
then 
    printf '%s %s\n' $[num1] 字符串长度不为零
else
    echo '两个字符串不相等!'
fi

# test file
## -e -r -w -x -d -f -c -s -b
echo
if test -x ./9_test.sh && test -s ./9_test.sh; then
    echo -e '文件存在且至少有一个字符串，且可执行!\n'
else
    echo '文件不存在!'
fi

## -a AND -o OR ! NOT
cd ../../../home/workspace/Shell
if test -e ./9_test.sh -o -e ./8_test.sh
then
    echo '至少有一个文件存在!'
else
    echo '两个文件都不存在'
fi
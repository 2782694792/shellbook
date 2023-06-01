#! /bin/bash
# author: belien
# https://www.runoob.com/linux/linux-shell-basic-operators.html

# bach quotes (`)
## bash doesnot support simple math, but "awk" and "expr"
## "expr" : expression evaluation tool
## must have a space between expression and math, like 2 + 2, not 2+2

val=`expr 2 + 2`
echo "两数之和 2+2= $val"

a=10
b=20
val=`expr $a \* $b` # escape symbol in multiplication operation
echo "$a \* $b = $val"

## contiditional expression, in square barcket
## if ... then ... fi
echo
echo + - \* / %  = == !=
if [ $a != $b ]
then
   echo "a != b"
fi

echo 
echo -eq -ne -gt -lt -ge -le
if [ $a -le $b ] 
then
   echo "a <= b"
fi

echo 
echo "! -o(||) -a(&&)"
if [ $a -lt 100 -a $b -gt 15 ]
then
   echo "$a 小于 100 且 $b 大于 15 : 返回 true"
else
   echo "$a 小于 100 且 $b 大于 15 : 返回 false"
fi
 
echo
echo "&& : AND || : OR"
if [[ $a -lt 100 && $b -gt 100 ]]
then
   echo "返回 true"
else
   echo "返回 false"
fi

echo 
a="abc"
b="efg"
echo "-z -n \$name"
if [ -z $a ] 
then
   echo "-z $a : 字符串长度为 0"
elif [ -n "$a" ] 
then
   echo "-n $a : 字符串长度不为 0"
elif [ $a ] 
then
   echo "\$a $a : 字符串不为空"
else
   echo "$a"
fi

echo
# 文件测试运算符用于检测 Unix 文件的各种属性
file="./6_operator.sh"
if [ -r $file ]
then
   echo "-r $file可读"
else
   echo "$file不可读"
fi
if [ -w $file ]
then
   echo "-w $file可写"
else
   echo "$file不可写"
fi
if [ -x $file ]
then
   echo "-x $file可执行"
else
   echo "$file不可执行"
fi
if [ -f $file ]
then
   echo "-f $file为普通文件"
else
   echo "$file为特殊文件"
fi
if [ -d $file ]
then
   echo "-d $file是个目录"
else
   echo "$file不是个目录"
fi
if [ -s $file ]
then
   echo "-s $file不为空"
else
   echo "$file为空"
fi
if [ -e $file ]
then
   echo "-e $file存在"
else
   echo "$file不存在"
fi


#! /bin/bash
# author: belien
# https://www.runoob.com/linux/linux-shell-process-control.html


# if ... ; then ... ; fi
if [ $(ps -ef | grep -c "ssh") -gt 0 ]; then echo $(ps -ef | grep -c "ssh") 个; fi

## use "-gt | -lt" to indicate greater than (less than) or equal to in the symbol of "[ ]"
echo
a=10
b=20
if [ $a == $b ]
then
   echo "a 等于 b"
elif [ $a -gt $b ]
then
   echo "a 大于 b"
elif [ $a -lt $b ]
then
   echo "a 小于 b"
else
   echo "没有符合的条件"
fi

## use "> | <" to indicate greater than (less than) in the symbol of "((...))"
echo
if (( $a == $b ))
then
   echo "a 等于 b"
elif (( $a > $b ))
then
   echo "a 大于 b"
elif (( $a < $b ))
then
   echo "a 小于 b"
else
   echo "没有符合的条件"
fi

# for
## 语法格式：
:<<!
if condition1
then
    command1
elif condition2 
then 
    command2
else
    commandN
fi
!

echo
for str in This in is a string
do
    echo $str
done

# while
echo
int=1
while(( $int<=5 ))
do
    echo $int
    let "int++"
done

## 键盘信息，**read** 输入信息被设置为变量 FILM ，Ctrl+D 结束循环
:<<!
echo    
echo '按下 <CTRL-D> 退出'
while read FILM
do
    echo -n '输入你最喜欢的网站名: '
    echo "是的！$FILM 是一个好网站"
done
!

## dead cycle
:<<!
while :
do
    command
done
!

# for (( ; ; ))

# until
## 一般 while 循环优于 until 循环
## 格式：

:<<EOF
until condition
do
    command
done
EOF

echo
a=0
until [ ! $a -lt 10 ]
do
   echo $a
   a=`expr $a + 1`
done

# case 
## multi-branch selection structure
## use ";;" to indicate "break"
:<<EOF
case 值 in
模式1)
    command1
    command2
    ...
    commandN
    ;;
模式2)
    command1
    command2
    ...
    commandN
    ;;
esac
EOF

echo
echo '输入 1 到 4 之间的数字:'
echo '你输入的数字为:'
read aNum
case $aNum in
    1)  echo '你选择了 1'
    ;;
    2)  echo '你选择了 2'
    ;;
    3)  echo '你选择了 3'
    ;;
    4)  echo '你选择了 4'
    ;;
    *)  echo '你没有输入 1 到 4 之间的数字'
    ;;
esac

echo
site="belien"
case $site in
    "runoob") echo "菜鸟教程"
    ;;
    "google"|"edge") echo "Google 搜索"
    ;;
    "taobao"|"taobaoo") echo "淘宝网"
    ;;
    *)  if test "" != "belien" ; then
            echo *
        fi
    ;;
esac

# break
## break out all of loops
echo
while :
do
    echo -n "输入 1 到 5 之间的数字:"
    read aNum
    case $aNum in
        1|2|3|4|5) echo "你输入的数字为 $aNum!"
        ;;
        *) echo "你输入的数字不是 1 到 5 之间的! 游戏结束"
            break
        ;;
    esac
done

# continue
## break out of the current loop
while :
do
    echo -a "输入 1 到 5 之间的数字: "
    read aNum
    case $aNum in
        1|2|3|4|5) echo "你输入的数字为 $aNum!"
        ;;
        *) echo "你输入的数字不是 1 到 5 之间的!"
            continue
            echo "游戏结束"
        ;;
    esac
done



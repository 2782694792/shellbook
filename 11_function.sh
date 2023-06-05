#! /bin/bash
# author: belien
# https://www.runoob.com/linux/linux-shell-func.html

## custom function
:<<EOF
## Syntax format
[ function ] funname [()]
{
    action;
    [return int;]
}
EOF

# 函数使用前必须先定义
demoFun(){
    echo "这是我的第一个 shell 函数!"
}
echo "-----函数开始执行-----"
demoFun # 仅使用函数名便可调用

function demoFun2(){
    echo "这是我的第1.1个 shell 函数!"
    echo "输入第一个数字: "
    read aNum
    echo "输入第二个数字: "
    read anotherNum
    echo "两个数字分别为 $aNum 和 $anotherNum !"
    # c=$[ $aNum + $anotherNum ]
    # c=`expr ${aNum} + ${anotherNum}`
    c=$((aNum + anotherNum))
    return "$c"
}
demoFun2 # 返回值函数通过 $? 获取
printf "输入的两个数字之和为 %d !\n" $?
echo "输入的两个数字之和为 $? !"
echo "-----函数执行完毕-----"

# 表达式返回
echo
function demoFun1(){
    echo "这是我的计算 shell 函数!"
    return `expr 1 + 1`
}
demoFun1
echo $?

# 函数参数获取 $n, n >= 10，则使用 ${n} 
echo
funWithParam(){
    echo "第一个参数为 $1 !"
    echo "第二个参数为 $2 !"
    echo "第十个参数为 $10 !"
    echo "第十个参数为 ${10} !"
    echo "第十一个参数为 ${11} !"
    echo "参数总数有 $# 个!"
    echo "作为一个字符串输出所有参数 $* !"
    echo "$$	脚本运行的当前进程ID号"
    echo "$!	后台运行的最后一个进程的ID号"
    echo "$@	与\$*相同，但是使用时加引号，并在引号中返回每个参数"
    echo "$-	显示Shell使用的当前选项，与set命令功能相同"
    echo "$?	显示最后命令的退出状态。0 表示没有错误，其他任何值表明有错误"
}
funWithParam 1 2 3 4 5 6 7 8 9 34 73

# 条件判断, grep 是从给定字符串中寻找匹配内容
echo
echo "Hello World !" | grep -e Hello
echo $? # 0 true, false 非0
echo "Hello World !" | grep -e Bye
echo $?
if echo "Hello World !" | grep -e Hello
then
    echo true
else
    echo false
fi

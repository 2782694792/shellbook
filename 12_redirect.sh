# author : belien
# https://www.runoob.com/linux/linux-shell-io-redirections.html
# c.biancheng.net/view/942.html


# 输入输出重定向
:<<!
在 linux 中，标准输入设备指的是键盘，标准输出设备指的是显示器
!

## command 
### > 输出, >> 追加, < 输入
who > users
cat users

echo "菜鸟教程：www.runoob.com" > users
cat users

echo "菜鸟教程：www.runoob.com" >> users
cat users

wc -l users # 统计行数，输出文件名
    2 users

wc -l < users # 输入重定向，只读取内容
    2

# 执行command1，从文件infile读取内容，然后将输出写入到outfile中
command1 < infile > outfile

## 文件描述符 n
:<<!
- 为了表示和区分已经打开的文件，linux 会给每个文件分配一个整数 ID，成为文件描述符；

- Linux 程序在执行任何形式的 I/O 操作时，都是在读取或者写入一个文件描述符。

- 一个文件描述符的背后可能是一个硬盘上的普通文件、FIFO、管道、终端、键盘、显示器，甚至是一个网络连接。

n : 0 标准输入STDIN，1 标准输出STDOUT，2 标准错误输出STDERR
> file, >> 追加重定向, >& m 输出文件 m 和 n 合并, <& 输入文件 m
!

command 2>file

command 2>>file

command > file 2>&1 # 将 stdout 和 stderr 合并后重定向到 file
command >> file 2>&1

command < file1 >file2 # stdin 重定向到 file1， stdout 重定向到 file2

## 标记
### << tag, 将开始标记 tag 和结束标记 tag 之间的内容作为输入

# Here Document
:<<!
特殊重定向，用来将输入重定向到一个交互式 Shell 脚本或程序

语法格式：
command << delimiter
    document
delimiter

将两个 delimiter 之间的内容 document 作为输入传递给 command
- 结尾的delimiter 一定要顶格写，前面和后面不能有任何字符
- 开始的delimiter前后的空格会被忽略掉。
!

## 用在命令行中
wc -l << EOF
    欢迎来到
    菜鸟教程
    www.runoob.com
EOF

## 用来脚本中
cat << EOF
欢迎来到
菜鸟教程
www.runoob.com
EOF

# /dev/null 文件
:<<!
执行某个命令但又不希望再屏幕上显示结果，则可以重定向到 /dev/null

command > /dev/null

写入到它的内容都会被丢弃;
如果尝试从该文件读取内容，那么什么也读不到;
将命令的输出重定向到它，会起到"禁止输出"的效果。

!
# 希望屏蔽 stdout 和 stderr
command > /dev/null 2>&1
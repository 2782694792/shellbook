#! /bin/bash
# author : belien
# https://www.runoob.com/linux/linux-shell-io-redirections.html
# c.biancheng.net/view/942.html

for str in "C语言中文网" "http://c.biancheng.net/" "成立7年了" "日IP数万"
do
    echo $str >> demo.txt  #将输入结果以追加的方式重定向到文件
done

# 进行文件查看
#   $ cat demo.txt  

:<<EOF 标准输出重定向
# 预览当前目录内容
$ ls -l 
$ ls -l >>demo.txt  #重定向，追加写
$ cat demo.txt  
EOF

:<<EOF 错误输出重定向
$ ls java  #先预览一下错误信息
$ ls java 2> err.log  #重定向
$ cat err.log  #查看文件
EOF

:<<EOF 把正确结果和错误信息都保存到一个文件中
$ ls -l >out.log 2>&1
$ ls java >>out.log 2>&1
$ cat out.log
EOF

:<<EOF 多文件输出分类输出结果
ls -l >>out.log 2>>err.log
EOF

:<<EOF /dev/null 文件, 好比 Linux 系统的垃圾箱
ls -l &>/dev/null
EOF

:<<EOF 输入重定向
wc -l <readme.txt  #输入重定向
EOF

:<<EOF 代码块重定向
把一组命令同时重定向到一个文件
EOF
while read str; do
    echo $str
done <readme.txt

:<<EOF 输入重定向符号 <<, 使用特定分解符结束命令输入
wc -l << END
EOF

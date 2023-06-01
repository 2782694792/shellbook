#! /bin/bash

# like printf() function in c language
echo 'printf  format-string  [arguments...]'

echo
echo "Hello, Shell"
printf "Hello, Shell\n"

printf "\n"
printf "%-10s %-8s %-4s\n" 姓名 性别 体重kg  
printf "%-10s %-8s %-4.2f\n" 郭靖 男 66.1234
printf "%-10s %-8s %-4.1f\n" 杨过 男 48.6543
printf "%-10s %-8s %-4.3f\n" 郭芙 女 47.9876

echo
# format-string为双引号
printf "%d %s in double quotes\n" 1 "abc"
# 单引号与双引号效果一样
printf '%d %s in single quotes\n' 1 "abc"

echo
# 没有引号也可以输出
printf %s abcdef

echo
# 格式只指定了一个参数，但多出的参数仍然会按照该格式输出，format-string 被重用
printf %d"\n" 1 1123
echo
printf '%s'"\n" abc def 123
echo
printf "%s %s %s\n" a b c d e f g h i j
printf "%d %d %d\n" 1 2 3 4 5 6 7 8 9 10

echo
# 如果没有 arguments，那么 %s 用NULL代替，%d 用 0 代替
printf "%s and %d \n"

echo 
printf "a string, no processing:<%s>\r" "A\nB"
printf "\va string, no processing:<%b>\n" "A\nB"

echo
printf "www.runoob.com \a"

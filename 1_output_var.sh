# https://www.runoob.com/linux/linux-shell.html

# 1.1 first line, mark: interpret execute this script
#! /bin/bash
# 1.2 output
echo "hello world"

## for print in current dir, command is ``, not ''
echo 
i=1
for file in `ls .`; do
    echo current dir have $i file: $file
    i=$i+1
done

echo 
for skill in Ada Coffe Action Java; do
    echo "I am good at ${skill}Script"
done

# 1.3 variable
# https://www.runoob.com/linux/linux-shell-variable.html

## no spaces, keyworks in bash cannot be used 
## first character is not a number
## PHP need the symbol, is $

### 1.3.1 multiple ways of writing : $name ${name} 'a '$name' !' "a $name !"
echo 
name_1=me
_varname="me2"
echo $name_1
echo ${_varname}

### 1.3.2 doubel quotes(\"\") can used escape symbol,but single quotes('') not used!"
echo 
echo "doubel quotes(\"\") : $name_1 or ${_varname}_2 in test1"
echo 'single quotes('') : $name_1 or ${_varname}_2 in test1'
echo 'single quotes('') double : '$name_1' or '${_varname}_2' in test1'
echo single quotes\(\'\'\) in var : '$name_1' or '${_varname}_2' in test1
echo doubel quotes\(\"\"\) in var : "$name_1" or "${_varname}_2" in test1

### 1.3.3 readonly 
echo 
your_name="tom"
echo "source : $your_name"
readonly your_name
your_name="alibaba"
echo 'override : '$your_name''

### 1.3.4 nset
echo 
echo "delete the variable of your_name ..."
unset your_name



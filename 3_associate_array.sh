#! /bin/bash

# associative array, keyword : declare
declare -A site=(
    ["google"]="www.google.com" 
    ["runoob"]="www.runoob.com" 
    ["taobao"]="www.taobao.com"
)
echo ${site["google"]}

declare -A site
site["google"]="www.google.com"
site["runoob"]="www.runoob.com"
site["taobao"]="www.taobao.com"
echo
echo ${site["google"]}

# all elements, (key, value) > (!name[*], name[*])
echo
echo "数组的键为: ${!site[*]}"
echo "数组的元素为: ${site[*]}"

# length : #name[*]
echo
echo "数组元素个数为: ${#my_array[*]}"
#echo "数组元素个数为: ${#my_array[@]}"
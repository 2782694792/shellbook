#! /bin/bash
# author: belien

:<<EOF
. filename  # 注意点号(.)和文件名中间有一空格
source filename
EOF

# 使用 . 号来引用 9_test.sh 文件
echo "<<<<<<<<<<<<<<<<<<<<<<<< ."
. ./9_test.sh

# 使用 source 来引用文件
echo "<<<<<<<<<<<<<<<<<<<<<<<< source"
source ./9_test.sh
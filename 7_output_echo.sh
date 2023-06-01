#! /bin/bash

echo -e "-e escape! \c" # -e 开启转义 \c 不换行
echo -e "-e escape! \n" # -e 开启转义

echo 'print text in single quotes '' : $name\"'

echo
echo "command execute result in back quotes `` \n"
echo `date`
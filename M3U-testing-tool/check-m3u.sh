#!/bin/env bash

echo -e "\033[32m欢迎使用检测m3u或者m3u8文件内容网址有效性的工具！\033[0m"

# 询问是否开始检测
echo -e "\033[34m是否要开始检测m3u或者m3u8文件？（y/n）\033[0m" 
read isStart
if [ $isStart = "y" ]; then
  # 询问文件位置与文件名
  echo -e "\033[34m请输入读取文件的路径：\033[0m"
  read readPath
  echo -e "\033[34m请输入文件名：\033[0m"
  read fileName

  # 利用shell脚本对m3u或者m3u8文件内的网址进行检测，并删除不可以的网址，再次生成一个m3u或者m3u8文件
  echo -e "\033[32m开始检测$readPath/$fileName中的网址...\033[0m"

  # 询问是否删除无效地址
  echo -e "\033[34m是否要删除无效地址？（y/n）\033[0m"
  read isDelete

  # 读取m3u或者m3u8文件内容
  readContent=`cat $readPath/$fileName`

  # 将内容按照行读取并放入数组
  arr=($readContent)

  # 进度条
  progress=$(tput cols)
  count=$(($progress*2))
  index=0

  for line in ${arr[@]}
  do
    # 如果当前行为注释，跳过检测
    if [[ $line == \#* ]] ; then
      continue  
    fi
  
    # 检测是否为有效网址
    curl -I $line > /dev/null
    statusCode=$?
    if [ $statusCode != 0 ] ; then
      echo -e "\033[31m无效地址: $line\033[0m"
      # 如果选择删除，则删除此行
      if [ $isDelete = "y" ]; then
        sed -i '/$line/d' $readPath/$fileName
      fi
    else
      echo -e "\033[32m有效地址: $line\033[0m"
    fi
    
    # 生成进度条
    i=$((index++))
    meter=$((i%count))
    printf "\r[%-50s] %d%%" $(for i in {1..50}; do test $i -le $meter && echo -n '#' || echo -n ' '; done) $((i*100/count))
  done

  # 询问是否保存文件
  echo -e "\033[34m是否要保存文件？（y/n）\033"
  read isSave
  if [ $isSave = 'y' ]; then
    # 询问是否重命名，如果重命名，则询问重命名的内容
    echo -e "\033[34m是否要重命名m3u或m3u8文件？（y/n）\033[0m"
    read isRename
    if [ $isRename = 'y' ]; then
      echo -e "\033[34m请输入新的文件名：\033[0m"
      read newFileName
    fi

    # 询问文件保存的路径
    echo -e "\033[34m请输入文件保存的路径：\033[0m"
    read savePath
    # 保存文件
    if [ $isRename = "y" ]; then
      mv $readPath/$fileName $savePath/$newFileName
    else
      cp $readPath/$fileName $savePath
	fi
    fi
  fi

echo -e "\033[32m检测已完成！欢迎再次使用！\033[0m"

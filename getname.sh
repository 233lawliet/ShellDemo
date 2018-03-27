#!/bin/bash


#显示文件的信息
dir="/etc/"
filename="./filename.txt"
if [ ! -f ${filename} ]
then
	touch ${filename}
else
	ls ${dir}>${filename}
fi



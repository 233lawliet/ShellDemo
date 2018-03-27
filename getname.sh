#!/bin/bash




addfile(){
	
	for file in `ls ${dir}`
	do
		realfile=${dir}${file}
		if  [ -f ${realfile} ]
		then
			echo ${file}>>${filename}
		elif [ -d ${realfile} ]
		then
		        echo  "${file} is dir , no write in" 	
		else
			echo "${file} is unkonw"
		fi
	done
}


#显示文件的信息
dir="/etc/"
filename="./filename.txt"
if [ ! -f ${filename} ]
then
	touch ${filename}
else
	addfile ${dir}  ${filename}
fi



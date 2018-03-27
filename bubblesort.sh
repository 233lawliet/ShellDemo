#!/bin/bash



#捕获数据
read str
temp=""
array=($str)


#冒个泡
for ((i=1;i<${#array[@]};i++))
do
    for((j=0;j<((${#array[@]}-$i));j++))
    do
       if  ((${array[$j]} <  ${array[(($j+1))]} ))
       then 
	       temp=${array[$j]}
	       array[$j]=${array[(($j+1))]}
	       array[(($j+1))]=$temp
       fi 
    done
done

#判断文件是否存在
filename="./result.txt"
if  [ ! -f  ${filename} ]
then
    touch ${filename}
else
    echo "">${filename}
fi

#输出文件到filename
for ((i=0;i<${#array[@]};i++))
do
	echo  " ${array[$i]} ">>${filename}
done

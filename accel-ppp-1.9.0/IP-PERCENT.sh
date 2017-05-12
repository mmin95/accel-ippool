filename1="/var/log/accel-ppp/IP2"


declare -a NAMES
declare -a NUM
declare -a D_NAMES	# Discrete pool names
declare -a D_NUM	# Discrete pool count

#echo "AAAA"

mycount1=0
mycount2=1
dcount=0

while read line;

do
	name="$line"
	tokens=$(echo $name | tr "=" "\n")

#	echo "$name"

	for token in $tokens
	do
#	   echo "$mycount1"
#	   echo "$mycount2"
	   if [ $mycount2 -eq 1 ]
	   then
		NAMES[$mycount1]=$token
		mycount2=$[mycount2+1]
	    

	   elif [ $mycount2 -eq 2 ]
	   then
                NUM[$mycount1]=$token
		count2=1
		mycount1=$[mycount1+1]
		mycount2=$[mycount2-1]
	   fi
	   
	done
	

##	while count<${#name}
	##	ch=${name:count:count+1}
	##	echo $count
	##	count=$count+1


done < "$filename1"

# echo ${NAMES[*]}

# echo " -- - - - - - - /n"



# echo ${NUM[*]}

# echo ${#NAMES[@]}

for ((i=0; i < ${#NAMES[@]}; i++))
do
	
#	echo "$dcount"
	if [ ${NAMES[i]} == "-" ]
	then
#		echo "  - - - - - Machted"
		continue
	fi

	D_NUM[$dcount]=${NUM[$i]}
        D_NAMES[$dcount]=${NAMES[$i]}
# 	echo ${D_NUM[*]}
# 	echo ${D_NAMES[*]}

	for((j=i+1; j < ${#NAMES[@]}; j++))
	do
		tempstr=${D_NAMES[$dcount]}
		tempstr2=${NAMES[$j]}
#		echo "------------------"
#		echo "$tempstr"
#		echo "$tempstr2"
#		echo "------------------"
		if [ $tempstr == $tempstr2 ]
		then
			temp=${D_NUM[$dcount]}
			temp2=${NUM[$j]}
# 			echo "$temp"
#			echo "$temp2"
# 			echo "Place "
# 			echo "$[temp+temp2]"
# 			echo "$dcount"
			D_NUM[$dcount]=$[temp+temp2]
			NAMES[$j]="-"
			NUM[$j]=0
		fi
	done
	dcount=$[dcount+1]
# 	echo " = = = = = =One exec complete = = = = = = "
#	echo "$dcount"
#	echo ${D_NUM[*]}
#	echo ${D_NAMES[*]}

done

#echo ${D_NUM[*]}

#echo "********** Distinct Names *************"

#echo ${D_NAMES[*]}

file="/var/log/accel-ppp/IP0"

echo "" > $file
for((j=0; j < ${#D_NAMES[@]}; j++))
do
	echo "${D_NAMES[$j]}" >> $file
	echo "${D_NUM[$j]}" >> $file 
done
#echo ${D_NUM[*]}
#for name in ${NAMES[*]}

#if [ "$x" == "valid" ]; then
#  echo "x has the value 'valid'"
#fi


filename="/var/log/accel-ppp/Connected-Users"

#echo "" >> $filename

declare -a CONN_USERS_COUNT
declare -a CONN_USERS_POOL
declare -a DISCONN_USERS_COUNT
declare -a DISCONN_USERS_POOL
declare -a ACTIVE_USERS_COUNT
declare -a ACTIVE_USERS_POOL

declare -a PERCENT_USERS_COUNT
declare -a PERCENT_USERS_POOL

iteration=0
conn_count=0
d_iteration=0
iteration2=0
conn_count2=0
d_iteration2=0

while read line;
do
	l="$line"
#	echo "$l"

	if [ $iteration -eq 0 ]
	then
		CONN_USERS_POOL[$d_iteration]=$l
		CONN_USERS_COUNT[$d_iteration]=1

	else
		flag=0
	
		for ((i=0;i<${#CONN_USERS_POOL[@]};i++))	
		do
			temp_str=${CONN_USERS_POOL[$i]}
			temp_int=${CONN_USERS_COUNT[$i]}
			if [ $temp_str == $l ]
			then
				CONN_USERS_COUNT[$i]=$[temp_int+1]
				flag=1
			fi
		done
		if [ $flag -eq 0 ]
		then
			d_iteration=$[d_iteration+1]
	                CONN_USERS_POOL[$d_iteration]=$l
        	        CONN_USERS_COUNT[$d_iteration]=1

		fi
	fi
	########### WHAT TO DO FOR NEW
		iteration=$[iteration+1]
		
done < "$filename"

file="/var/log/accel-ppp/Disconn"

while read line;
do
        l="$line"
#        echo "$l"

        if [ $iteration2 -eq 0 ]
        then
                DISCONN_USERS_POOL[$d_iteration2]=$l
                DISCONN_USERS_COUNT[$d_iteration2]=1

        else
                flag=0

                for ((i=0;i<${#DISCONN_USERS_POOL[@]};i++))
                do
                        temp_str=${DISCONN_USERS_POOL[$i]}
                        temp_int=${DISCONN_USERS_COUNT[$i]}
                        if [ $temp_str == $l ]
                        then
                                DISCONN_USERS_COUNT[$i]=$[temp_int+1]
                                flag=1
                        fi
                done
                if [ $flag -eq 0 ]
                then
                        d_iteration2=$[d_iteration2+1]
                        DISCONN_USERS_POOL[$d_iteration2]=$l
                        DISCONN_USERS_COUNT[$d_iteration2]=1

                fi
        fi
        ########### WHAT TO DO FOR NEW
                iteration2=$[iteration2+1]

done < "$file"

#echo ${CONN_USERS_POOL[*]}
#echo ${CONN_USERS_COUNT[*]}


#echo ${DISCONN_USERS_POOL[*]}
#echo ${DISCONN_USERS_COUNT[*]}

############## Comparing the numbers ############## 

for ((i=0;i<${#CONN_USERS_POOL[@]};i++))
do
       	temp_str=${CONN_USERS_POOL[$i]}
       	temp_int=${CONN_USERS_COUNT[$i]}
	for ((j=0;j<${#DISCONN_USERS_POOL[@]};j++))
	do
		temp_str_dis=${DISCONN_USERS_POOL[$j]}
		temp_int_dis=${DISCONN_USERS_COUNT[$j]} 
       		if [ $temp_str == $temp_str_dis ]
       		then
             		ACTIVE_USERS_COUNT[$i]=$[temp_int-temp_int_dis]
             		ACTIVE_USERS_POOL[$i]=$temp_str
       		fi
	done
done

#echo " ******************** Active Users ********************"

#echo ${ACTIVE_USERS_POOL[*]}
#echo ${ACTIVE_USERS_COUNT[*]}

declare -f temp

#################### Computing the percentage ####################

for ((i=0;i<${#ACTIVE_USERS_POOL[@]};i++))
do
        temp_str=${ACTIVE_USERS_POOL[$i]}
        temp_int=${ACTIVE_USERS_COUNT[$i]}
        for ((j=0;j<${#D_NAMES[@]};j++))
        do
                temp_str_dis=${D_NAMES[$j]}
                temp_int_dis=${D_NUM[$j]}
                if [ $temp_str == $temp_str_dis ]
                then
			temp_int=$[temp_int*100]
			temp=$(echo "scale=2; $temp_int/$temp_int_dis" | bc -l)	#$[temp_int/temp_int_dis]
                        PERCENT_USERS_COUNT[$i]=$temp
                        PERCENT_USERS_POOL[$i]=$temp_str
                fi
        done
done

#echo ${D_NAMES[*]}
#echo ${D_NUM[*]}

echo "******* PERCENT IP USED *******"
#str1="Pool Name"; str2="Percentage IPs Used";
#printf "| %20s %s" $str1; printf "| %20s %s| \n" $str2;

#awk 'BEGIN {printf("%s %15s |  \n" ,"Pool Name", "Percentage IPs Used")}'

echo "+-------------+--------------+"

for((x=0;x<${#PERCENT_USERS_POOL[@]};x++))
do
	str1=${PERCENT_USERS_POOL[$x]}
	str2=${PERCENT_USERS_COUNT[$x]}
#	echo $str1"++++++++"
#	awk '{print $str1"\t \t" $str2 "\t"}'|column -t # %s %s \n", $str1, $str2)}'
	printf "| %10s %s " ${PERCENT_USERS_POOL[$x]}; printf "|  %10s %s | \n"  ${PERCENT_USERS_COUNT[$x]}"%";# echo ${PERCENT_USERS_POOL[$x]}"		""|""         "${PERCENT_USERS_COUNT[$x]}"%         ""|"
	echo "+-------------+--------------+"
done

#python printTable.py --showAffinity(${PERCENT_USERS_POOL[*]}, ${PERCENT_USERS_COUNT[*]})

#echo ${PERCENT_USERS_POOL[*]}
#echo ${PERCENT_USERS_COUNT[*]}


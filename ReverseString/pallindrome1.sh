read -p "Enter your input: " input

reversed=""
for (( i=${#input}-1; i >= 0; i-- )) ; do
    var2="${input:$i:1}"
    reversed+=$var2
done 

if [[ $reversed -eq $input ]] ; then 
    echo "$input is pallindrome"
else 
    echo "$input is not pallindrome! "
fi 
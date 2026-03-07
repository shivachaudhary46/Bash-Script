# Two pointer 
# Time complexity O(n/2), space complexity O(n/2)

read -p "Enter your input: " text
sum=0

for (( i=0, j=${#text}-1; i<j;  i++, j--)) ; do 
    # echo "${text:i:1} and ${text:j:1}"
    if [[ ${text:i:1} == ${text:j:1} ]]; then 
        sum=$((sum+1))
    fi
done 

# echo "$sum and $((${#text}/2)) " 

if [[ $sum == $((${#text}/2)) ]]; then 
   echo "$text is pallindrome"
else 
    echo "$text is not pallindrome"
fi 
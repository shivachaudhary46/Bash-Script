read -p "Enter your input to reverse: " string 

new_string=""
for (( j=${#string}-1; j >= 0; j-- )) ; do 
    var2="${string:$j:1}"
    new_string+=$var2
done

echo $new_string
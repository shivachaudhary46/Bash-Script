: <<'COMMENT'

/*---DOCUMENTATION---*/

read is used to take input from the user.

-p means prompt.
After using -p, we write the message/prompt first and then store the input into a variable.

Example:
read -p "enter your name: " name
In condition checking:
if [[ $operators == "+" ]]; then

we use == for string comparison.

We cannot use -eq for "+" because:
-eq is only used for integer/numeric comparison.

** is used for exponent/power operation.

There is no separate // floor division operator in bash like Python.
Default integer division is done using /.

If we want decimal/floating-point values,
we use bc with scale.
Example:
echo "scale=2; $ops1 / $ops2" | bc

Every if block must end with fi.
COMMENT

read -p "enter a first numbers: " first_operand
read -p "enter a second numbers: " second_operand
read -p "enter a operators: " operators

if [[ $operators == "+" ]];then 
    result=$(echo "$first_operand+$second_operand" | bc)
    echo "$first_operand + $second_operand = $result";
elif [[ $operators == "-" ]];then
    result=$(echo "$first_operand-$second_operand" | bc)
    echo "$first_operand - $second_operand = $result";
elif [[ $operators == "*" ]]; then 
    result=$(echo "$first_operand*$second_operand" | bc)
    echo "$first_operand * $second_operand = $result";
elif [[ $operators == "/" ]]; then
    result=$(echo "scale=2; $first_operand/$second_operand" | bc)
    echo "$first_operand / $second_operand = $result";
elif [[ $operators == "**" ]]; then 
    result=$(echo "$first_operand**$second_operand" | bc)
    echo "$first_operand ** $second_operand = $result";
elif [[ $operators == "//" ]]; then
    result=$(echo "$first_operand/$second_operand" | bc)
    echo "$first_operand // $second_operand = $result";
fi 

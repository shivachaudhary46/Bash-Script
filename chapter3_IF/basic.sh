x="Queen"
if [ $x == "King" ]; then 
    echo "$x is a king!"
else 
    echo "$x is not a king!"
fi 


x=10 
if (($x > 5)); then 
    echo "$x is more than 5!"
fi 

# -eq 
# -ne 
# -lt 
# -le 
# -gt 
# -ge

if [ $x -gt 5 ]; then 
    echo "$x is more than 5"
fi 

# Bash condition flags
# -e if the file exists 
# -s if the file exists and has size greater than zero 
# -r if the file exists and is readable
# -w if the file exists and is writable 

# && for AND 
# || for OR

# We can use this way as well 
x=10
if [ $x -gt 5 ] && [ $x -lt 11 ]; then 
    echo "$x is more than 5 and less than 11!"
fi 

# We can use this way as well 
x=10
if [[ $x -gt 5 && $x -lt 11 ]]; then 
    echo "$x is more than 5 and less than 11!"
fi 

# IF and command-line programs 

if grep -q Hello words.txt; then 
    echo "Hello is inside!"
fi 

if $(grep -q Hello words.txt); then 
    echo "Hello is inside!"
fi 
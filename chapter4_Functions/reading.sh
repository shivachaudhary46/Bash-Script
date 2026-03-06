read -p "Enter your name: " name
read -s -p "Enter your password: " password
echo -e " " 

if (($name == "shiva")) ; then 
    echo "Welcome $name, logging in..., $password"
else
    echo "Wrong username" 
fi 
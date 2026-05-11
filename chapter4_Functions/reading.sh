read -p "enter your username: " name 
read -s -p "enter your password: " password
echo -e " "

: <<'COMMENT'
-s means silent modes
-p means prompt modes
for example: if we use -p first then -s, 
then it will be error because, 
-p prompt asks for input just after we use this tag, 
-s silent is usually used in taking passwords. 
COMMENT

if ((name == "shiva")) ; then 
    echo "Welcome $name, logging in...., $password" 
else 
    echo "username doesn't match"
fi

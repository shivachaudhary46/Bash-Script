# function print_filename {
#     echo "The first file was $1" 
#     for file in $@
#     do 
#         echo "This file has name $file"
#     done 
# }

# function print_name {
#     echo "The first file was $1"
#     for file in $@ 
#     do 
#         echo "This file has name $file" 
#     done 
# }

# print_filename "LOTR.txt" "mod.txt" "A.py"

# # every variable are default considered as the global variable 
# # even though the variable are written inside the scopes or functions 

# # For example: 
# function print_filename {
#     first_filename=$1
#     second_filename=$2
# }
# print_filename "LOTR.txt" "model.txt" 
# echo $first_filename
# echo $second_filename

# function print_filename_global {
#     first_filename=$1
#     second_filename=$2 
# }
# print_filename_global "my shiva.txt" "chaudhary.txt" 
# echo "$first_filename"
# echo "$second_filename"

# echo $first_filename
# echo $second_filename

# # to restrict the variable scope we will use Local command 
# # for example: 

# echo -e "\n"


# function local_print_filename {
#     local first_filename=$1
#     local second_filename=$2
# } 

# local_print_filename "shiva.txt" "chaudhary.txt" 
# echo $first_filename
# echo $second_filename

# We will use local 

# function print_filename {
#     Local third_filename=$1
# }

# print_filename "LOTR.txt" "A.py" 
# echo $third_filename

# # returning the values in the Bash is only meant to determine if the function was a success (0) 
# # or failure (other values 1-255). It is captured in the global variable 
# # echo $? 

# # Let's return an error 
# function function_2 {
#     echlo # An error of 'echo'
# }

# function_2 # call the function 
# echo $?

# function convert_temp {
#     echo $(echo "scale=2; ($1 - 32) * 5 / 9" | bc )
# }
# convert_temp

# function convert_temp {
#     echo $(echo "scale=2; ($1 - 32) * 5 / 9" | bc )
# }

# converted=$(convert_temp 30)
# echo "30F in celsius is $converted C" 

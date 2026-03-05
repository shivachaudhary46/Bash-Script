# Declare without adding elements
declare -a my_first_array 

# appending to arrays 
# Create and add elements at the same time
my_array=(300 42 43 2 4 5 104 5 99 -34)
my_array+=(10)
echo ${my_array[@]}

# Not appending to arrays 
my_array=(300 42 23 2 4 33 54 67 66)
my_array+=10
echo ${my_array[@]}

echo ${my_array[@]:3:2}

# associative arrays
# similar to a normal array, but with key values pairs 
# similar to python's dictionary 

declare -A city_details # Declare First
city_details=([city_name]="New York" [population]=1400000) # Add elements
echo ${city_details[city_name]}

declare -A city_details=([city_name]="New york" [population]=14000000)

# access the keys of an associative array with an ! 
echo ${!city_details[@]} # Return all keys 

# appending the array is possible 
my_first_array=(15 20 300 42 4 3 33 54 67 66 89)
my_first_array[0]=10100

echo ${my_first_array[@]}
echo ${my_first_array}

# Printing the length of the array
echo ${#my_first_array[@]}

echo ${city_details[@]}

for key in "${!city_details[@]}"; do
    echo "$key: ${city_details[$key]}"
done
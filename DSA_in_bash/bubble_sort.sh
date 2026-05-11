: <<'COMMENT'
$1 takes first argument 
${} If we use curly back argument, 
we can seperate the variables 
name="shiva" 
echo "$name123" #output will be empty
echo "${name}123"
we can use for array 
arr=(4 5 6)
echo "${arr[@]}"
as substing 
echo "${name:0:5}"
text="I love java"
echo "${text/java/python}"

string length 
echo "{#name}"
COMMENT

array=(2 12 10 8 4 14)
bubble_sort () {
    arr=("$@")
    echo "debugging of ${arr[@]}"
    n=${#arr[@]}
    echo "length of ${#arr[@]}"

    for ((i=0; i<n; i++))
    do 
        for ((j=0; j<n-1; j++))
        do 
            if (( arr[j] > arr[j+1] )); then 
                temp=${arr[j]}
                arr[j]=${arr[j+1]}
                arr[j+1]=$temp
            fi
        done 
    done 

    for ((i=0; i<n; i++)) 
    do  
        echo "${arr[i]}"
    done
}

bubble_sort "${array[@]}"


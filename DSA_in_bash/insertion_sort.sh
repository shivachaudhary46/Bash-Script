array=(2 5 10 1 3 11 6)
insertion_sort () { 
    arr=("$@")
    n="${#arr[@]}"

    for ((i=0; i<n; i++))
    do
        key=${arr[i]}
        j=i-1
        while ((j>=0 && arr[j]>key))
        do 
            arr[j+1]=${arr[j]}
            j=$((j-1))
        done
        arr[j+1]=$key
    done 

    for ((i=0; i<n; i++)) 
    do 
        echo "${arr[i]}"
    done 
}

insertion_sort "${array[@]}"
array=(2 5 8 10 7 1 9 3)
selection_sort ()  {
    arr=("$@")
    n=${#arr[@]}

    for ((i=0; i<n; i++)) 
    do 
        min=$i

        for ((j=$i+1; j<n; j++))
        do
            if ((arr[j] < arr[min])); then 
                min=$j 
            fi
        done 
        
        temp=${arr[i]}
        arr[i]=${arr[min]}
        arr[min]=$temp
    done 

    for ((i=0; i<n; i++)) 
    do 
        echo "${arr[i]}"
    done 
}

selection_sort "${array[@]}"
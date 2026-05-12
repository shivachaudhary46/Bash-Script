array=( 3 5 7 9 10 13 90 145)

binary_search () {
    start=0
    arr=("$@")
    end=$((${#arr[@]}-1))
    key=${@: -1}

    mid=$(((start+end)/2))
    
    while ((start<end)) 
    do 
        if ((key==arr[mid])); then 
            echo "index: ${mid}"
            return  
        elif ((key>arr[mid])); then 
            start=$((mid+1))
        else 
            end=$((mid))
        fi
            
        mid=$(((start+end)/2))
    done
    return -1 
}

binary_search "${array[@]}" 13
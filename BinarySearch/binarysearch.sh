array=(2 3 5 7 9 19 21 34)

function binarysearch() {
    local s=$1
    local e=$2
    local key=$3
    local mid

    while (( s <= e )) ; do 
        if (( key > array[mid] )); then 
            s=$(( mid+1 ))
        elif (( key < array[mid] )); then 
            e=$(( mid-1 ))
        else 
            echo "Found $key at index $mid"
            return $mid 
        fi
        mid=$(( s + (e - s) / 2 ))
    done 

    echo "$key not found"
    return -1 
}

binarysearch 0 $(( ${#array[@]} - 1 )) 21


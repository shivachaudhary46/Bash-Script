function divideConqueor() { 
    local arr=("${!1}")
    local low=$2
    local high=$3 

    # only one array 
    if (( $low -eq $high )) ; then 
        # returning (low, high)
        echo "$arr[low] $arr[low]"
        return
    fi 

    if [[ $((low+1)) -eq $high ]]; then 
        if [[ $arr[low] -lt $arr[high] ]] ; then 
            echo "$arr[low] $arr[high]"
        else 
            echo "$arr[high] $arr[low]"
        fi 
        return 
    fi 
 
    mid=$((low+high/2))

    left=$(($divideConqueor $low $mid))
    right=$(($divideConqueor $((mid+1)) $right))

    left_min=$left[0]
    left_max=$left[1]
    right_min=$right[0]
    right_max=$right[1]

    if [[ left_min -lt right_min ]]; then 
        min=$left_min
    else 
        min=$right_min
    fi 

    if [[ $left_max -gt $right_max ]]; then 
        max=$left_max
    else
        max=$right_max
    fi 

    echo "$min $max"
    return

numbers=(4 5 2 1 11 9 3 4 0 24)
divideConqueor $numbers[@] 0 $((#numbers[@]-1))

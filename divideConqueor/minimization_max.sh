#!/bin/bash

# Function: returns "min max"
minmax() {
    local arr=("$@")
    local n=${#arr[@]}

    # Base case: one element
    if [ $n -eq 1 ]; then
        echo "${arr[0]} ${arr[0]}"
        return
    fi

    # Base case: two elements
    if [ $n -eq 2 ]; then
        if [ ${arr[0]} -lt ${arr[1]} ]; then
            echo "${arr[0]} ${arr[1]}"
        else
            echo "${arr[1]} ${arr[0]}"
        fi
        return
    fi

    # Divide
    mid=$((n / 2))

    left=("${arr[@]:0:mid}")
    right=("${arr[@]:mid}")

    # Conquer
    left_result=($(minmax "${left[@]}"))
    right_result=($(minmax "${right[@]}"))

    left_min=${left_result[0]}
    left_max=${left_result[1]}

    right_min=${right_result[0]}
    right_max=${right_result[1]}

    # Combine
    if [ $left_min -lt $right_min ]; then
        final_min=$left_min
    else
        final_min=$right_min
    fi

    if [ $left_max -gt $right_max ]; then
        final_max=$left_max
    else
        final_max=$right_max
    fi

    echo "$final_min $final_max"
}

# Input array
arr=(7 2 9 4 1 5 8 3)

result=($(minmax "${arr[@]}"))

echo "Minimum: ${result[0]}"
echo "Maximum: ${result[1]}"
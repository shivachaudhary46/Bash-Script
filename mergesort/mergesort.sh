#!/bin/bash

# Function to merge two sorted arrays
merge() {
    local left=("${!1}")
    local right=("${!2}")
    local result=()

    i=0
    j=0

    while [[ $i -lt ${#left[@]} && $j -lt ${#right[@]} ]]; do
        if [[ ${left[$i]} -le ${right[$j]} ]]; then
            result+=(${left[$i]})
            ((i++))
        else
            result+=(${right[$j]})
            ((j++))
        fi
    done

    # Add remaining elements
    while [[ $i -lt ${#left[@]} ]]; do
        result+=(${left[$i]})
        ((i++))
    done

    while [[ $j -lt ${#right[@]} ]]; do
        result+=(${right[$j]})
        ((j++))
    done

    echo "${result[@]}"
}

# Merge Sort function
merge_sort() {
    local arr=("$@")

    # Base case
    if [[ ${#arr[@]} -le 1 ]]; then
        echo "${arr[@]}"
        return
    fi

    # Find middle
    mid=$(( ${#arr[@]} / 2 ))

    # Divide
    left=("${arr[@]:0:mid}")
    right=("${arr[@]:mid}")

    # Recursively sort
    sorted_left=($(merge_sort "${left[@]}"))
    sorted_right=($(merge_sort "${right[@]}"))

    # Merge
    merge sorted_left[@] sorted_right[@]
}

# Input array
echo "Enter numbers separated by space:"
read -a numbers

# Call merge sort
sorted=($(merge_sort "${numbers[@]}"))

# Output result
echo "Sorted array: ${sorted[@]}"
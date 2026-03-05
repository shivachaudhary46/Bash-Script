function iterate_sum () {

    local sum=0

    for number in "$@"
    do 
        echo $number
    done
}

test_array=(5 6 7 8 9)
iterate_sum "$test_array[@]"

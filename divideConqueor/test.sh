numbers=(5 9 2 7)

print_array() {
    local arr=("${!1}")
    echo "${arr[@]}"
}

print_array numbers[@]
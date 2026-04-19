function merge() {
    local arr1=("${!1}")
    local arr2=("${!2}")

    echo $arr1, $arr2
}


arr1=(3 4 5)
arr2=(5 6 7)

merge arr1[@] arr2[@]
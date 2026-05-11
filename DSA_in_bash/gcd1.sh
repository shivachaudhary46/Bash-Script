gcd () {
    a=$1
    b=$2
    if [[ a == 0 ]]; then 
        echo "$b"
    elif [[ b == 0 ]]; then 
        echo "$a"
    else 
        while (( b != 0 )); do 
            a=$b
            b=$((a%b))
        done
        echo "$a as GCD"
    fi 
}

gcd 12 8 
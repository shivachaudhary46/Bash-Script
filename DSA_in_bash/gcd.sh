# Recursive function to calculate using Euclidean algorithm 

gcd() {
    a=$1
    b=$2

    if [[ $a == 0 ]]; then
        echo "$b"
    else
        gcd "$((b % a))" "$a"
    fi
}

gcd 12 18

: <<'COMMENT'
/*---Recursive Algorithm---*/ 

COMMENT

read -p "enter number: " n 

fibonacci () {
    local n=$1 
    if [[ $n -eq 0 ]]; then 
        echo 0
    elif [[ $n -eq 1 ]]; then 
        echo 1 
    else 
        a=$(fibonacci "$((n-1))")
        b=$(fibonacci "$((n-2))")
        echo $((a+b))
    fi 
}

for ((i=0; i<n; i++))
do 
    fibonacci "$i"
done 

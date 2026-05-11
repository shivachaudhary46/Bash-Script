: <<'COMMENT'
We can use -e for the extended version of echo,
because normal echo ignores special characters.

Using -e allows escape characters like:
\n  -> new line
\t  -> tab space
\\  -> backslash

Example:
echo -e "Hello\nWorld"

Output:
Hello
World
COMMENT

fibonacci () {
    read -p "enter upto which number to print fibonacci: " n

    t1=0
    t2=1
    echo -e "$t1\n$t2" 
    for ((i=2; i<=n; i++)) ;
    do 
        t=$((t1+t2))
        t1=$t2
        t2=$t
        echo "$t"
    done
}

fibonacci
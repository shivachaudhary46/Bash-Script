#!/usr/bin/bash

# cat animals.txt | cut -d " " -f 2 | sort | uniq -c 

: <<'COMMENT'
#!/usr/bin/bash is shebang meaning it is needed for running in bash. 
can be found by command (type bash), only in linux 
- cat is used for the lookups of file 
- cut is used for filtering the data 
- -d " ", is a delimitter space
- -f 2 filtering the column taking 2 
- sort will sort in ascending 
- uniq will not take word which is not unique 
- -c will count the repeating words
- | pipe will take output from one command and put as input into another command 
COMMENT

# passing argument in bash 
# echo $1  # It is first argument 
# # echo $2  # It is second argument
# echo $@  # all argument 
# echo "all arguments" $# # length of argument

: <<'COMMENT'
If arguments = "shiva chaudhary" is passed what will happen to above $1, $2 
It will break sentences, collapse sentences, for example "     *" -> It will expand all files. 
"$1" "$2" = takes whole quoted items as 1 and preserves. 
COMMENT

# Question no 1

echo "--- Using \"\$*\" ---"
for arg in "$*"; do 
    echo "Arg: $arg"
done

echo "--- Using \"\$@\" ---"
for arg in "$@"; do 
    echo "Arg: $arg" 
done 

: <<'COMMENT'
What is the difference between "$*" & "$@"
let's take an example "hello     world *" and "shiva chaudhary" "damn" "genius" 
$* It will treat all argument as one, joins them with spaces 
$@ seperate 
COMMENT
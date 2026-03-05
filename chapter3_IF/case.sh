if grep -q 'sydney' $1; then
    mv $1 sydney/ 
fi 
if grep -q 'melbourne|brisbane' $1; then 
    rm $1 
fi 
if grep -q 'canberra' $1; then 
    mv $1 "IMPORTANT_$1"
fi

case $(cat $1) in
    *sydney*) 
    mv $1 sydney/ ;;
    *melbourne*|*brisbane*)
    rm $1 ;;
    *canberra*) 
    mv $1 "IMPORTANT_$1" ;;
    *) 
    echo "No cities found" ;;
esac 

case $1 in 
    Monday|Tuesday|Wednesday|Thrusday|Friday) 
    echo "It is Weekday!" ;;
    Sunday|Saturday)
    echo "It is Weekend!" ;;
    *)
    echo "Not a day!" ;; 
esac
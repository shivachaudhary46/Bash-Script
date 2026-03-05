# expr 1 + 2.5
expr 1 + 2

echo "5 + 7.5" | bc
echo 5 + 7.5 | bc 

bc has scale argument which is used to allow how many decimal places

echo "10/3" | bc 
echo "scale=3; 10/3" | bc

echo $((5 + 7))

model1=87.89
model2=89.30
echo "The total score is $(echo "$model1 + $model2" | bc)"

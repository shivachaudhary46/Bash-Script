model1=3.5 
model2=5.6

echo "This is $(echo "$model1 + $model2" | bc)"

echo "This is $(echo $model1 + $model2) | bc"
echo "This average total score is $(echo "($model1 + $model2)/2" | bc)"

echo "This average total score is $(echo "($model1 + $model2) / 2" | bc)"
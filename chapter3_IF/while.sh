x=1 

while [ $x -le 3 ]; 
do 
    echo $x 
    ((x+=1))
done

# Create a FOR statement on files in directory
for file in robs_files/*.py
do
    # Create IF statement using grep
    if grep -q 'RandomForestClassifier' $file ; then
        # Move wanted files to to_keep/ folder
        mv $file to_keep/
    fi
done

for file in robs_files/*.py 
do 
    if grep -q "RandomForestClassifier" $file; then 
        mv $file to_keep/ 
    fi 
done

# mv source to_destination 

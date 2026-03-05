for i in 1 2 3 
do 
    echo $i 
done

# for loop number of changes
for x in {1..5..2}
do 
    echo $x 
done 

# This means that gp from 1 to 5, by spacing with 2 
# 1 3 5 

echo -e "This is new \n"
for x in {1..8..2}
do 
    echo $x 
done 

echo -e "For loop three expression syntax"
for ((x=2; x<=4; x+=2))
do 
    echo $x
done 

for book in books/*
do 
    echo $book
done 

for book in $(ls books/ grep -i 'air')
do 
    echo $book
done

echo -e "\n" 

# select all the files which end to .R
for file in inherited_folder/*.R
do 
    echo $file
done

# Use a FOR loop on files in directory
for file in inherited_folder/*.R
do
    # Echo out each file
    echo $file
done

emp_num=1
while [ $emp_num -le 1000 ];
do
    cat "$emp_num-dailySales.txt" | egrep 'Sales_total' | sed 's/.* ://' > "$emp_num-agg.txt"
done
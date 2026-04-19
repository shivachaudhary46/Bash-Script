to search any key (grep 'a' fruits.txt)
grep '[pc]' fruits.txt to get the list of key
cat new_fruits.txt | sort | uniq -c | head -n 3

cat soccer_scores.csv | grep 1959

cat two_cities.txt | grep -E 'Sydney Carton|Charles Darnay' | wc -l 

if file extension has .sh 
if file has the she-bang and path to Bash 

which bash (to find what to write after shebang / hash bang) 

(#!/usr/bash
echo "Hello world"
echo "Goodbye world:
)

bash script.sh 
cat soccer_scores.csv | cut -d "," -f 2 | tail -n + 2 | sort | uniq -c 

changing the content inside the csv file and changing the name of the file 
cat previous_document_name.csv | sed 's/previous/new/g' > new_document.name

STDIN (standard input). A stream of data into the program
STDOUT (standard output). A stream of data out of the program
STDERR (standard error). Errors in your program 

ARGV is the array of all arguments given to the program 
Each argument can be accessed via the $ notation. The first as $1, the second as $2 etc
- $@ and $* give all the arguments in ARGV 
- $# gives the length (number) of arguments.

echo $1 
echo $2 
echo $@
echo "There are" $# "arguments"

How to extract argument from the console, 
select the argument from selected file and 
save it in the new file 
cat hire_data/* | grep "$1" > "Tallinn".csv

To look data we will use 

Cat data


./docs "shiva chaudhary" "robin mAN SHREASTHA" 
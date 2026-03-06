with flag 
head -n 3 summer.csv

for recursive showing the files
ls -RF /home/
-R -> It means that recursively go to all the file and print their name 
-F -> It means that print / after completing the folder 

tail -n +7 spring.csv 
-> it means that skip files from 1-6 and print from 7 to all 

tail -n -7 spring.csv 
It means that print last 7 element of the spring.csv

head -n +7 spring.csv 
Print the first 7 lines of spring.csv.

head -n -7 spring.csv 
print everything except the last 7 lines of spring.csv 

cut -f 2-5, 8 -d , values.csv

-c: print a count of matching lines rather than the lines themselves
-h: do not print the names of files when searching multiple files
-i: ignore case (e.g., treat "Regression" and "regression" as matches)
-l: print the names of files that contain matches, not the matches
-n: print line numbers for matching lines
-v: invert the match, i.e., only show lines that don't
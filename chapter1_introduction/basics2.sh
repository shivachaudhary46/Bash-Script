#!/usr/bin/bash 

: <<'COMMENT'
Without shebang ./fruits.sh would either fail or 
use system default shell (/bin/sh), which may not be bash
With bash, we are pinning path, assuming bash path is available. shebang 
pins the exact interpreter. 
without using shebang, may call dash, it may not be bash, or it may be .zsh
COMMENT

# To find the words in the files
grep 'z' fruits.txt 
grep '[pc]' fruits.txt

: <<'COMMENT'
cat is used for looking documents
sort is used for sorting documents
uniq -c is used for uniques and -c is for counting 
head -n 3 takes top 3 rows
cat new_fruits.txt | sort | uniq -c | head -n 3
COMMENT 

: <<'COMMENT' 
cat two_cities.txt | grep -E 'Sydney Carton|Charles Darnay' | wc -l 
wc counts the number of newlines (lines in two_cities.txt)
-E means it is extended 

diff between grep vs grep -E 
grep -E 'Sydney Carton|Charles Darnay' -- |, or works and looks for both name logically 
but normal grep, 
grep 'Sydney Carton|Charles Darnay' will treat as one words and search for them 
COMMENT

: <<'COMMENT'
It adds execute permission, makes the script runnable 
chmod +x - executable permissions
chmod +r - read permissions 
chmod +w - write permissions 
COMMENT 
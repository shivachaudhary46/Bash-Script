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


sort do sorting in the alphabetical orders but the flags -n and -r can be used to sort numerically and reverse way.. while -b tells to ignore leading blanks and -f tells to be incase senstive. 

sort | uniq -> removes the duplicated lines 

sort | uniq -c -> to display unique lines with a count of how often each occurs rather than using uniq and wc 

We have to access the variable in the echo by using 
$variable 

for file in seasonal/*.csv; 
do 
    grep 2017-17-07 $file | tail -n 1
done 

last year.csv , if i want to delete this file from shell 
i should use "last year.csv" 

# CURL 
Curl is used for transfering data from or to a server using URLs. It supports these protocols: DICT, FILE, FTPS.

It is short for Client for URLs. 
It is a Unix command line tool. 
It is used to transfers data to and from a server 
It is used to download data from HTTP(s) sites and FTP servers. 

This is the basic syntax of the curl 
curl [option flags] [url]

CURL supports urls like 
HTTP, HTTP, FTP, SFTP

for example: 
curl -O https://websitename.com/datafilename.txt

to rename the file, use the lower case -o + new file name 
curl -o renameddatafilename.txt https://websitename.com/datafilename.txt 

Using globbing parser 
curl -O https://websitename.com/datafilename[001-100].txt

10th file 
curl -O https://websitename.com/datafilename[001-100:10].txt

-C resumes a previous file transfer if it times out before completion
-L redirects the HTTP URL if a 300 error code occurs. 

Downloading data using Wget 
What is Wget ? 
Wget: 
- derives its name from World Wide Web and get 
- native to linux but compatible for all OS 
- used to download data from HTTP, HTTPS and FTP 
- better that downloading data rather than curl in recursive way 
- It can work on background 

sudo apt-get install wget 

downloading a single file 
wget -b (Go to background immediately after startup)
wget -q (Turn off the Wget output)
wget -c (Resume broken download (i.e. continue getting a partially downloaded file))

multiple file downloading with Wget 
cat url_list.txt 

https://websitename.com/datafilename001.txt 
https://websitename.com/datafilename002.txt 

we can donwload the inside the url_list.txt using -i 
wget -i url_list.txt 

upper bandwidth limit rate 
wget --limit-rate={rate}k {file_location}
for example: 
wget --limit-rate=200k -i url_list.txt

setting download constraints for small files 
wget --wait={seconds} {file_location}
for example: 
wget --wait=2.5 url_list.txt 

Curl advantages: 
- Can be used for downloading and uploading files from 20+ protocols
- Easier to install across all operating systems 

Wget advantages: 
- Has many function which help in downloading multiple file download 
- it can run in background 
- Can handle various file formats for download (file directory, HTML page)

What is csvkit ? 
It is a suite of command line tools 
It is developed in python by wireservice 
It offers data processing and clearning capabilities on CSV files 

in2csv SpotifyData.xlsx > SpotifyData.csv

Prints the first sheet in Excel to console and does not save 
in2csv SpotifyData.xlsx 

> redirects the output and saves it as a new file SpotifyData.csv 

> SpotifyData.csv

Converting files to CSV 
Use --names or -n option to print all sheet names in SpotifyData.xlsx 
in2csv -n SpotifyData.xlsx 

output (sheet names)
Worksheet1_Popularity 
Worksheet2_MusicAttributes

We should use --sheet option followed by the sheet "Worksheet1_popularity" to be converted. 

in2csv SpotifyData.xlsx --sheet "Worksheet1_Popularity" > Spotify_Popularity.csv

Does not print logs in the terminal 

We can preview documents by using csvlook or cat 
csvlook: renders a CSV to the command line in a Markdown-compatible, fixed width format 

csvlook -h 

csvstat: descriptive stats on CSV data files 

csvstat: prints descriptive summary statistics on all columns in CSV (e.g. mean, median, unique value counts)

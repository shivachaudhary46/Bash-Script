# 5 1 * * * bash myscript.sh 

# It means that after 5 minute, after 1 hour, every year, every month, every day 

# 15 14 * * 7 bash myscript.sh 

# 15, 30, 45 * * * * , It will run at the 15, 30 and 45 minutes mark for whatever hours
# are specified by the second star. Here it is every hour, every day etc

# Use a slash for every X increment 
# */15 * * * * runs every 15 minutes. Also for every hour, day etc. 

# crontab -e 30 1 * * * 
# If we are using nano (on MAC) we should use ctrl + o then enter ctrl + x to exit 


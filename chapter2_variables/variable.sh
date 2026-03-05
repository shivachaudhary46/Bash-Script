# Single quote
now_var='NOW'

now_var_singlequote='$now_var'
echo $now_var_singlequote

# Double quote back tick variable 
now_var_singlequote="$now_var"
echo $now_var_singlequote

# backtick quote 
rightnow_doublequote="The date is `date`."
echo $rightnow_doublequote

# parantheses
rightnow_paranthisis="The date is $(date)"
echo $rightnow_paranthisis
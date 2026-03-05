temp_a="$(cat temp/region_a.txt)"
temp_b="$(cat temp/region_b.txt)"

regions=(temp_a temp_b)

echo ${regions[@]}

average_temp="$(echo "scale=2; (${region_temps[0]} + ${region_temps[1]}) / 2" | bc)"

echo "${average_temp}"

average_temp="$(echo "scale=2; $() | bc ")"
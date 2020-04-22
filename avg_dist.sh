#!/bin/zsh
for year in {09..19};
do 
	for month in {01..12};
	do
		#Average distance of rides per month 
		#cat yellow_tripdata_20$year-$month.csv | awk -F, 'BEGIN{} {avgdis = avgdis+ $5} END{print avgdis/NR}' >> 20$year-avg.txt
	    #for number of taxi rides on each day 
	    #cat yellow_tripdata_20$year-$month.csv | awk -F, '{print $2}' |awk -F" " '{print $1}'| sort | uniq -c | sort -k 2,2 >> daily_rides.txt
	    
	    #Clean the data, removing ^M 
	    #sed -e "s/\r//g" yellow_tripdata_20$year-$month.csv > 20$year-$month.csv
	    #extract routes info for each month 25th 0900 to 1200 
	    filename=20${year}-${month}.csv
	    year=$year
	    month=$month
	    # awk -F, -v i="$month" -v year="$year" -v filename="$filename" '{gsub("-", "",$2);gsub(" ", "",$2);gsub(":", "",$2)} 20'$year''$month'25090000 <= $2 && 20'$year''$month'25120000 >= $2' $filename > route_$year-$month.csv
		#awk -F, -v month="$month" -v year="$year" -v filename="$filename" '{gsub("-", "",$2);gsub(" ", "",$2);gsub(":", "",$2)} 20'$year''$month'01090000 <= $2 && 20'$year''$month'30120000 >= $2' $filename > route_$year-$month.csv	
		
		#working at command prompt
		# awk -F, -v env_var="$VAR" -v env_var="$month" -v env_var="$filename" '{gsub("-", "",$2);gsub(" ", "",$2);gsub(":", "",$2)} 20'$VAR''$month'25090000 <= $2 && 20'$VAR''$month'25120000 >= $2' $filename > route_$VAR-$month.csv
	done
done
≈ƒ
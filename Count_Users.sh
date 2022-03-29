#!/bin/bash
# Counts the amount of unique individual users

DIR=$1


function h1 {
	echo ${FUNCNAME[0]}
	zless /net/corpora/twitter2/Tweets/DATE/*.gz  | /net/corpora/twitter2/tools/tweet2tab -i user |\ # Replace DATE with a date you want to search for in the RUG database
	sort | uniq -c | # Sorts and removes duplicates
	wc -l # Counts the amount of unique users and returns the total amount.
}

h1

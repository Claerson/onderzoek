#!/bin/bash
# Counts the total amount of tweets

DIR=$1


function h1 {
	echo ${FUNCNAME[0]}
	zless /net/corpora/twitter2/Tweets/DATE/*.gz  | /net/corpora/twitter2/tools/tweet2tab -i user |\ # Replace DATE with a date you want to search for in the RUG database
	wc -l # Counts all lines, since each username is placed on a seperate line and returns the total amount of lines.
}

h1

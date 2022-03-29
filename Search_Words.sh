#!/bin/bash
# Counts the amount of times a word occurs in an indicated document or folder.

DIR=$1


function h1 {
	echo ${FUNCNAME[0]}
	cat $FIlE |\ # Use: zless /net/corpora/twitter2/Tweets/2019/01/*.gz  | /net/corpora/twitter2/tools/tweet2tab text instead of cat $FILE if you are using the RUG database
	grep -Eo '\w+'|\ # Every word is tokenized (placed on seperate line)
	grep -i -w "word" |\ # Place word that needs to be found. Program searches for lines that contain this word.
	wc -l # Counts all the lines that contain the word and returns the number of lines.

}


h1 

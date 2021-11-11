#!/bin/bash

# Transform an eventbrite export into a simpler users file to be used as input to create users
# cgates
# 4/20/2021

set -eu

PARTICIPANTS_FILE=$1 #participants/eventbrite-registrants.20210419.txt 
PASSWD_PREFIX=$2

EMAIL_FIELD_INDEX=5

echo -e "#username\tpasswd\temail\tfirst_name\tlast_name"
cat $PARTICIPANTS_FILE | \
	awk -F '\t' -v email_field_index=${EMAIL_FIELD_INDEX} -v passwd_prefix=${PASSWD_PREFIX} \
	'BEGIN {OFS="\t"}
        NR==1 {next}
        /^#/ {next}
	NF>=4 {
		user=tolower(gensub(/@.*/, "","g", $email_field_index)); 
		passwd=sprintf("%s%s", passwd_prefix, substr($1, length($1)-2, length($1))); 
		print user, passwd, $email_field_index, $3, $4}' | \
	sort --ignore-case 

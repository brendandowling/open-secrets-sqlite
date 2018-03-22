#!/bin/bash

cat init.sql 

function dofiles()
{
	while [[ $# > 0 ]] 
	do
		echo "-- doing file $1"
		./import_file.py $1 $2 
		shift
		shift
	done		
}

# note: For most of these no column specifier is needed because the number of columns matches the schema in order.
read -d '' files<<EOL
lob_agency.txt                agencies    
lob_bills.txt                 bills       
lob_indus.txt                 industries  
lob_issue.txt                 issues      
lob_lobbying.txt              lobbying    
lob_lobbyist.txt              lobbyists   
lob_rpt.txt                   reporttypes 
EOL

dofiles $files
   
# this one needs to be handled specially
echo "-- doing lob_issue_NoSpecficIssue.txt"
./import_file.py lob_issue_NoSpecficIssue.txt issues  "(si_id, uniqid, issueid, issue, year)" 

echo "-- finishing"
cat finish_init.sql 


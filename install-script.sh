#! /bin/bash

echo "Starting with installation script"

### Retrieval of credentials path
credentials=/dpl_tmp/credentials.txt


### EXAMPLE: Credential handling 
##Credential by index
#EXAMPLE: Index 0 password 
awk -F"[{}]" '{print $2}' $credentials | sed -n 's/.*"password":"\([^"]*\)".*/\1/p'
#EXAMPLE: Index 1 password 
awk -F"[{}]" '{print $4}' $credentials | sed -n 's/.*"password":"\([^"]*\)".*/\1/p'

##username by index
#EXAMPLE: Index 0 password 
awk -F"[{}]" '{print $2}' $credentials | sed -n 's/.*"username":"\([^"]*\)".*/\1/p'
#EXAMPLE: Index 1 password 
awk -F"[{}]" '{print $4}' $credentials | sed -n 's/.*"username":"\([^"]*\)".*/\1/p'


##credential by username 
#EXAMPLE: customuser2
grep -o '{[^{}]*"username":"customuser2"[^{}]*}' $credentials | sed -n 's/.*"password":"\([^"]*\)".*/\1/p'

echo "Finished with installation script"

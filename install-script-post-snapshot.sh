#! /bin/bash

echo "Starting with post installation script"

### Retrieval of multiflags and credentials path
multiflags=/dpl_tmp/multiflags.txt
credentials=/dpl_tmp/credentials.txt


### EXAMPLE: Flag/Credential handling 
##Flag by index
#EXAMPLE: Index 0
awk -F"[{}]" '{print $2}' $multiflags | sed -n 's/.*"flag":"\([^"]*\)".*/\1/p'
#EXAMPLE: Index 1
awk -F"[{}]" '{print $4}' $multiflags | sed -n 's/.*"flag":"\([^"]*\)".*/\1/p'

##Flag by name
#EXAMPLE: flag name 1
grep -o '{[^{}]*"flag":"flag name 1"[^{}]*}' $multiflags | sed -n 's/.*"flag":"\([^"]*\)".*/\1/p'

#EXAMPLE: flag-2
grep -o '{[^{}]*"flag":"flag name 2"[^{}]*}' $multiflags | sed -n 's/.*"flag":"\([^"]*\)".*/\1/p'


### CLEANUP Files
#rm -rf /dpl_tmp

### Cleanup Artifacts
## Clear history
history -c


echo "Finished post installation script"

#! /bin/bash

echo "Starting with post installation script"

### Retrieval of multiflags and credentials
multiflags=`cat /dpl_tmp/multiflags.txt`
credentials=`cat /dpl_tmp/credentials.txt`



### EXAMPLE: Flag handling 
##Flag by index
# write-host $($multiflags[0].flag)
##Flag by name
# write-host $multiflags.Where({$_.Name -like "flag name 1"}).flag
echo "$multiflags" 


### CLEANUP Files
rm /dpl_tmp/multiflags.txt
rm /dpl_tmp/credentials.txt
## Optional: Remove installation source
# Remove-Item -Path C:\Windows\Temp\REPOSITORY_NAME.txt

### Cleanup Artifacts
## Clear history
history -c

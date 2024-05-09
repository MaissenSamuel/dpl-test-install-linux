#! /bin/bash

sleep 30
echo "Hello World" > /dpl_tmp/post_snapshot.txt

multiflags=`cat /dpl_tmp/multiflags.txt`  
echo "$multiflags" 


#CLEANUP


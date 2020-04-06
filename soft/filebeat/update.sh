#!/bin/bash

V=`cat /etc/redhat-release | sed -r 's/.* ([0-9]+)\..*/\1/'`

if [ $V -eq 7 ];then
   cd /tmp
   /bin/bash update_7.sh    
   
elif [ $V -eq 6 ];then 
   cd /tmp
   /bin/bash update_6.sh       
   
else
   exit 
   
fi

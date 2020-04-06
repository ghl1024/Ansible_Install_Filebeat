#!/bin/bash

set -e
Version=`cat /etc/redhat-release | sed -r 's/.* ([0-9]+)\..*/\1/'`

if [ $Version -eq 7 ];then
   cd /tmp
   rpm -ivh filebeat-7.1.0-x86_64.rpm
   mv /etc/filebeat/filebeat.yml /etc/filebeat/fiilebeat.yml.bak
   mv /tmp/filebeat.yml /etc/filebeat/
   systemctl start filebeat.service
   systemctl enable filebeat.service 
elif [ $Version -eq 6 ];then 
   cd /tmp
   rpm -ivh filebeat-7.1.0-x86_64.rpm
   mv /etc/filebeat/filebeat.yml /etc/filebeat/fiilebeat.yml.bak
   mv /tmp/filebeat.yml /etc/filebeat/
   service filebeat start
   chkconfig --add filebeat
   chkconfig filebeat on        
else
   exit   
fi
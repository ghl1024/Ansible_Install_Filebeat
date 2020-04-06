#!/bin/bash

IP=`ifconfig eth0|awk -F "[ :]+" 'NR==2{print $4}'`
sed -i "s#syslog#syslog-$IP#g" /etc/filebeat/filebeat.yml
service filebeat restart
service filebeat status

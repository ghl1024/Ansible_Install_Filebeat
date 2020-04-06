#!/bin/bash

IP=`ifconfig eth0|awk -F "[ ]+" 'NR==2{print $3}'`
sed -i "s#syslog#syslog-$IP#g" /etc/filebeat/filebeat.yml
systemctl restart filebeat.service
systemctl status filebeat.service


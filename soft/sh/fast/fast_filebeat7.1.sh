#!/bin/bash
cd /soft/sh/tongyong/
SERVER=$1
SERVER=${SERVER//,/ }    #将SERVER中的,替换为空格
for element in $SERVER 
do
    sh  filebeat7.1.sh $element   
done

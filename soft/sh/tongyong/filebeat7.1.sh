ansible $1   -m  copy -a  "src=/soft/filebeat/  dest=/tmp"
ansible $1   -m  shell -a  "cd /tmp ;/bin/bash filebeat.sh"
ansible $1   -m  shell -a  "cd /tmp ;/bin/bash update.sh"
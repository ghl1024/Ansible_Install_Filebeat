:notes: 说明：
---
1. 此脚本需要部署在 `Ansible` 主机上；

2. 使用 `Ansible` 远程在客户端中以 `rpm` 包方式安装 `filebeat7.1.0`；

3. 客户端须为 `CentOS7.x` 或 `CentOS6.x` 发行版；

:sunny: 前提：
---
`RemoteIP` 为客户端所在 `IP` ；

`RemoteIP` 须和 `Ansible` 做了互信;

:earth_africa: 用法:
---
```
git clone https://github.com/ghl1024/Ansible-Filebeat.git
cd ./Ansible-Filebeat/soft/sh/fast && ./fast_filebeat7.1.sh RemoteIP
```

:pencil2:例子：
---
```
cd /soft/sh/fast && ./fast_filebeat7.1.sh 172.14.125.36
```

:notes: 说明：
---
1. 此脚本需要部署在 `Ansible` 主机上；

2. 使用 `Ansible` 远程在客户端中以 `rpm` 包方式安装 `filebeat7.1.0`；

3. 客户端须为 `CentOS7.x` 或 `CentOS6.x` 发行版；

4. 根据自己的需求修改 `soft/filebeat/filebeat.yml` 文件，然后就可以批量部署了；

:sunny: 前提：
---
`RemoteIP` 为客户端所在 `IP` ；

`RemoteIP` 须和 `Ansible` 做了互信;

:earth_africa: 用法:
---
```
git clone https://github.com/ghl1024/Use-Ansible-Install-Filebeat.git
cd ./Use-Ansible-Install-Filebeat/soft/sh/fast && ./fast_filebeat7.1.sh RemoteIP01,RemoteIP02,RemoteIP03
```

:pencil2:例子：
---
```
cd ./Use-Ansible-Install-Filebeat/soft/sh/fast && ./fast_filebeat7.1.sh 172.14.125.36,172.14.125.37,172.14.125.38
```

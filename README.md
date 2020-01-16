# mysql2mysql

**MySQL同步脚本**


dump.sh 导出mysql数据到文件

import.sh 导入数据文件到服务器

dumptoimport.sh 导出数据库数据，通过通道直接导入远程服务器；不经过文件，速度更快

## 未来计划

现阶段就是能用，将来要支持 k8s/k3s 部署，相关配置，自动通过数据

数据包含：本地文件数据，远程服务器
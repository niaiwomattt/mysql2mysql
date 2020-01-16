#!/bin/bash

## 引用文档：https://dev.mysql.com/doc/refman/8.0/en/mysqlimport.html
## MySQL 导出导入脚本

# 导入数据库相关配置
IMPORT_HOST="192.168.1.243"
IMPORT_USER="dev"
IMPORT_PWD="123"
IMPORT_OTHER="" # 导入的其他参数
IMPORT_FILE="" # 导入数据文件

# 执行导入 & 后台执行，可以并行执行
# mysql 可以导入
mysql -h $IMPORT_HOST -u$IMPORT_USER -p$IMPORT_PWD  $IMPORT_OTHER < $IMPORT_FILE
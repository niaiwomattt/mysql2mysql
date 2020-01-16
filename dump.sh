#!/bin/bash

## 引用文档：https://dev.mysql.com/doc/refman/8.0/en/mysqldump.html
## MySQL 导出导入脚本

# 导出数据库相关配置
DUMP_HOST="192.168.1.251"
DUMP_USER="dev"
DUMP_PWD="123"
DUMP_DBS="chinesemedicine gyys_cloud gyys_uims" # 用空格间隔多个数据库名称：db1 db2
DUMP_OTHER="" # 导出的其他参数
OUT_FILE="tmp.sql" # 导出文件名

# 执行导入 & 后台执行，可以并行执行
mysqldump -h $DUMP_HOST  -u$DUMP_USER -p$DUMP_PWD --databases $DUMP_DBS  $DUMP_OTHER > $OUT_FILE
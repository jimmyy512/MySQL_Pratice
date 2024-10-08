#!/bin/bash

# 创建备份目录
mkdir -p /backup_data/backup_sql

# 获取备份间隔时间，默认为86400秒（1天）
BACKUP_INTERVAL=${BACKUP_INTERVAL:-86400}

echo "Starting backup script at $(date)"
echo "Current system timezone: $(date +'%Z %z')"

while true; do
  TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
  mysqldump -h mysql -u root -pqweasd mydatabase > /backup_data/backup_sql/backup_$TIMESTAMP.sql
  echo "Backup taken at $TIMESTAMP"
  sleep $BACKUP_INTERVAL
done

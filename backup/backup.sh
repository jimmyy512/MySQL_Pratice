#!/bin/bash

# 創建 backup_sql 資料夾
mkdir -p /backup/backup_sql

# 從環境變量中獲取備份間隔時間，默認為86400秒（1天）
BACKUP_INTERVAL=${BACKUP_INTERVAL:-86400}

# 打印當前系統時間和時區
echo "Starting backup script at $(date)"
echo "Current system timezone: $(date +'%Z %z')"

while true; do
  TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
  # 密碼由 compose 以 MYSQL_PWD 環境變數帶進來，不寫在腳本裡（repo 是公開的）
  mysqldump -h mysql -u root mydatabase > /backup/backup_sql/backup_$TIMESTAMP.sql
  echo "Backup taken at $TIMESTAMP"
  sleep $BACKUP_INTERVAL
done

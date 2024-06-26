# 使用官方 MySQL 映像作為基礎映像
FROM mysql:latest

# 環境變量設置
ENV MYSQL_ROOT_PASSWORD=root_password
ENV MYSQL_DATABASE=test_db
ENV MYSQL_USER=test_user
ENV MYSQL_PASSWORD=test_password

# 設置端口
EXPOSE 3306

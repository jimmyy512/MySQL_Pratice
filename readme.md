# MySQL Docker 模板專案

## 簡介

```sh=
預設每分鐘會備份資料庫到
backup > backup_sql底下
```

## 運行 Docker 服務

```sh=
docker-compose up --build -d
```

運行完成後  
網頁輸入

```sh=
http://localhost:8080/
```

phpMyAdmin 帳密

```sh=
root
qweasd
```

詳情可以參考 docker-compose.yml

## 進入 docker 容器

```sh=
docker exec -it ${容器ID} sh
```

## MySql 登入

```sh=
mysql -u your_username -p
```

## 還原 mySql 資料庫

進入 mySql 容器

```sh=
docker exec -it mysql bash
```

還原指定資料庫

```sh=
mysql -u root -pqweasd mydatabase < /backup/backup_sql/origin.sql;
```

## 讀取 SqlTemplate 模板

進入 mySql 容器

```sh=
docker exec -it mysql bash
```

登入 mySql

```sh=
mysql -u root -p
```

執行 Sql 模板

```sh=
use mydatabase;
source /SqlTemplate/test.sql;
```

## 測試 Sql 語法

創建 table

```sh=
create table employees(   eid INT,   birth_date DATE,   first_name VARCHAR(20),   last_name VARCHAR(20),   gender ENUM("M", "F"),   hired_date DATE );
```

插入資料

```sh=
INSERT INTO employees(eid, birth_date, first_name, last_name, gender, hired_date) VALUES (1, '2001-01-10', 'John', 'Doe', 'M', '2018-09-10');
```

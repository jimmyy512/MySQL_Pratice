# MySQL Docker 模板專案
## 簡介
```
預設每分鐘會備份資料庫到
backup > backup_sql底下
```
## 運行Docker服務
```
docker-compose up --build -d
```

運行完成後  
網頁輸入  
```
http://localhost:8080/
```


## 進入 docker 容器 
```
docker exec -it ${容器ID} sh
```

## MySql登入
```
mysql -u your_username -p
```

## 還原 mySql 資料庫
進入 mySql 容器
```
docker exec -it mysql bash
```

還原指定資料庫
``` 
mysql -u root -prootpassword mydatabase < /backup/backup_sql/origin.sql;
```


## 測試 Sql 語法
創建 table
```
create table employees(   eid INT,   birth_date DATE,   first_name VARCHAR(20),   last_name VARCHAR(20),   gender ENUM("M", "F"),   hired_date DATE );
```
插入資料
```
INSERT INTO employees(eid, birth_date, first_name, last_name, gender, hired_date) VALUES (1, '2001-01-10', 'John', 'Doe', 'M', '2018-09-10');
```
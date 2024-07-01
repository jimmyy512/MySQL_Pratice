# MySQL 練習專案
## 運行服務
```
docker-compose up --build -d
```

## 進入 docker 容器 
```
docker exec -it ${容器ID} sh
```

## MySql登入
```
mysql -u your_username -p
```

## 還原sql
進入 mySql 容器
```
docker exec -it mysql bash
```

還原指定資料庫
``` 
mysql -u root -prootpassword mydatabase < /backup/backup_sql/origin.sql;
```


## test sql
創建 table
```
create table employees(   eid INT,   birth_date DATE,   first_name VARCHAR(20),   last_name VARCHAR(20),   gender ENUM("M", "F"),   hired_date DATE );
```
插入資料
```
INSERT INTO employees(eid, birth_date, first_name, last_name, gender, hired_date) VALUES (1, '2001-01-10', 'John', 'Doe', 'M', '2018-09-10');
```
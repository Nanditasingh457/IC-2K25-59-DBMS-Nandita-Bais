
mysql> CREATE DATABASE sql_assignment;
Query OK, 1 row affected (0.01 sec)

mysql> USE sql_assignment;
Database changed
mysql> CREATE TABLE countries (
    -> country_id INT,
    -> country_name VARCHAR(50),
    -> region_id INT
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> DESC countries;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| country_id   | int         | YES  |     | NULL    |       |
| country_name | varchar(50) | YES  |     | NULL    |       |
| region_id    | int         | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> CREATE DATABASE sql_assignment;
ERROR 1007 (HY000): Can't create database 'sql_assignment'; database exists
mysql> CREATE TABLE dup_countries LIKE countries;
Query OK, 0 rows affected (0.03 sec)

mysql> DESC dup_countries;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| country_id   | int         | YES  |     | NULL    |       |
| country_name | varchar(50) | YES  |     | NULL    |       |
| region_id    | int         | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> CREATE TABLE dup_countries AS SELECT * FROM countries
    -> ;
ERROR 1050 (42S01): Table 'dup_countries' already exists
mysql> DROP TABLE IF EXISTS dup_countries;
Query OK, 0 rows affected (0.02 sec)

mysql> DROP TABLE IF EXISTS countries;
Query OK, 0 rows affected (0.01 sec)

mysql> CREATE TABLE countries (
    -> country_id VARCHAR(2) NULL,
    -> country_name VARCHAR (40) NULL,
    -> region_id DECIMAL (10,0) NULL
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> CREATE TABLE jobs (
    -> job_id VARCHAR(10) NOT NULL,
    -> job_title VARCHAR(35) NOT NULL,
    -> min_salary DECIMAL(6,0),
    -> max-salary DECIMAL(6,0),
    -> CHECK (max_salary<= 25000)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-salary DECIMAL(6,0),
CHECK (max_salary<= 25000)
)' at line 5
mysql>  CREATE TABLE jobs (
    ->     -> job_id VARCHAR(10) NOT NULL,
    ->     -> job_title VARCHAR(35) NOT NULL,
    ->     -> min_salary DECIMAL(6,0),
    ->     -> max_salary DECIMAL(6,0),
    ->     ->CHECK (max_salary <= 25000)
    ->     ->);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> job_id VARCHAR(10) NOT NULL,
    -> job_title VARCHAR(35) NOT NULL,
    -> mi' at line 2
mysql> CREATE TABLE jobs (
    -> job_id VARCHAR(10) NOT NULL,
    -> job_title VARCHAR(35) NOT NULL,
    -> min_salary DECIMAL(6,0),
    -> max_salary DECIMAL(6,0),
    -> CHECK (max_salary <= 25000)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> DROP TABLE IF EXISTS countries;
Query OK, 0 rows affected (0.02 sec)

mysql> CREATE TABLE countries (
    -> country_id VARCHAR(2),
    -> country_name VARCHAR(40),
    -> region_id DECIMAL(10,0),
    -> CHECK (country_name IN ('Italy',
    -> 'India','China'))
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> CREATE TABLE job_history (
    -> employee_id DECIMAL(6,0) NOT NULL,
    -> end_date DATE NOT NULL,
    -> job_id VARCHAR(10) NOT NULL,
    -> department_id DECIMAL(4,00 NOT NULL,
    -> CHECK (end_date LIKE '__/__/___')
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'NOT NULL,
CHECK (end_date LIKE '__/__/___')
)' at line 5
mysql>  CREATE TABLE jobs (
    ->     -> job_id VARCHAR(10) NOT NULL,
    ->     -> job_title VARCHAR(35) NOT NULL,
    -> job_id VARCHAR(10) NOT NULL,
    ->
    ->
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> job_id VARCHAR(10) NOT NULL,
    -> job_title VARCHAR(35) NOT NULL,
job_id VA' at line 2
mysql>
mysql> mysql> CREATE TABLE job_history (
    ->     -> employee_id DECIMAL(6,0) NOT NULL,
    -> start_date DATE NOT NULL,
    -> end_date DATE NOT NULL,
    -> job_id VARCHAR(10) NOT NULL,
    -> department_id DECIMAL(4,0) NOT NULL,
    -> CHECK (end_date LIKE '__/__/___')
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'mysql> CREATE TABLE job_history (
    -> employee_id DECIMAL(6,0) NOT NULL,
star' at line 1
mysql>  CREATE TABLE job_history (
    ->     ->     -> employee_id DECIMAL(6,0) NOT NULL,
    ->     -> start_date DATE NOT NULL,
    ->     -> end_date DATE NOT NULL,
    ->     -> job_id VARCHAR(10) NOT NULL,
    ->     -> department_id DECIMAL(4,0) NOT NULL,
    ->     -> CHECK (end_date LIKE '__/__/___')
    ->     -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '->     -> employee_id DECIMAL(6,0) NOT NULL,
    -> start_date DATE NOT NULL,
  ' at line 2
mysql> CREATE TABLE job_history (
    -> employee_id DECIMAL(6,0) NOT NULL,
    -> start_date DATE NOT NULL,
    ->     ->     -> end_date DATE NOT NULL,
    ->     ->     -> job_id VARCHAR(10) NOT NULL,
    ->     ->     -> department_id DECIMAL(4,0) NOT NULL,
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '->     -> end_date DATE NOT NULL,
    ->     -> job_id VARCHAR(10) NOT NULL,
   ' at line 4
mysql> CREATE TABLE job_history (
    -> employee_id DECIMAL(6,0) NOT NULL,
    -> start_date DATE NOT NULL,
    -> end_date DATE NOT NULL,
    -> job_id VARCHAR(10) NOT NULL,
    -> department_id DECIMAL(4,0) NOT NULL,
    -> CHECK (end_date LIKE '__/__/___')
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> DROP TABLE IF EXISTS countries;
Query OK, 0 rows affected (0.02 sec)

mysql> CREATE TABLE countries (
    -> country_id VARCHAR(2) NOT NULL,
    -> country_name VARCHAR(40) NOT NULL,
    -> region_id DECIMAL(10,0) NOT NULL,
    -> UNIQUE (country_id)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> DROP TABLE IF EXISTS jobs;
Query OK, 0 rows affected (0.02 sec)

mysql> CREATE TABLE jobs (
    -> job_id VARCHAR(10) NOT NULL,
    -> job_title VARCHAR(35) NOT NULL DEFAULT ' ',
    -> min_salary DECIMAL(6,0) DEFAULT 8000,
    -> max_salary DECIMAL(6,0) DEFAULT NULL
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> DROP TABLE IF EXISTS countries;
Query OK, 0 rows affected (0.01 sec)

mysql> CREATE TABLE countries (
    -> country_id VARCHAR(2) NOT NULL,
    -> country_name VARCHAR(40) NOT NULL,
    -> region_id DECIMAL(10,0) NOT NULL,
    -> PRIMARY KEY (country_id)
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> DROP TABKE IF EXISTS
    ->
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'TABKE IF EXISTS' at line 1
mysql> DROP TABLE IF EXISTS countries;
Query OK, 0 rows affected (0.02 sec)

mysql> CREATE TABLE countries (
    -> country_id INT NOT NULL AUTO_INCREMENT,
    -> country_name VARCHAR(40) NOT NULL,
    -> region_id DECIMAL(10,0) NOT NULL,
    -> PRIMARY KEY (country_id)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql>mysql> CREATE TABLE countries (
    -> country_id VARCHAR(10),
    -> country_name VARCHAR(40),
    -> region_id INT,
    -> UNIQUE ( country_id , region_id )
    -> );
ERROR 1046 (3D000): No database selected
mysql> SHOW DTABASES;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DTABASES' at line 1
mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| assignmen          |
| assignmen_1        |
| assignment_1       |
| collage            |
| college            |
| information_schema |
| mydb               |
| mysql              |
| performance_schema |
| sakila             |
| sql_assignment     |
| sys                |
| world              |
+--------------------+
13 rows in set (0.01 sec)

mysql> USE hr;
ERROR 1049 (42000): Unknown database 'hr'
mysql> USE assignment_1;
Database changed
mysql> CREATE TABLE countries (
    -> country_id VARCHAR(10),
    -> country_name VARCHAR(40),
    -> region_id INT,
    -> UNIQUE (country_id , region_id )
    -> );
ERROR 1050 (42S01): Table 'countries' already exists
mysql> DESCRIBE countries;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| country_id   | int         | YES  |     | NULL    |       |
| country_name | varchar(40) | YES  |     | NULL    |       |
| region_id    | int         | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> SHOW CREATE TABLE countries;
+-----------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table     | Create Table                                                                                                                                                                                             |
+-----------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| countries | CREATE TABLE `countries` (
  `country_id` int DEFAULT NULL,
  `country_name` varchar(40) DEFAULT NULL,
  `region_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
+-----------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)

mysql> DROP TABLE countries;
Query OK, 0 rows affected (0.02 sec)

mysql> CREATE TABLE countries (
    -> country_id INT NOT NULL,
    -> country_name VARCHAR(40),
    -> region_id INT,
    -> UNIQUE ( country_id, region_id )
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> SHOW CREATE TABLE countries;
+-----------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table     | Create Table                                                                                                                                                                                                                                               |
+-----------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| countries | CREATE TABLE `countries` (
  `country_id` int NOT NULL,
  `country_name` varchar(40) DEFAULT NULL,
  `region_id` int DEFAULT NULL,
  UNIQUE KEY `country_id` (`country_id`,`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
+-----------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)

mysql> USE assignment_1;
Database changed
mysql> CREATE TABLE job_history (
    -> employee_id INT,
    -> start_date DATE,
    -> end_date DATE,
    -> job_id VARCHAR(10),
    -> department_id INT,
    -> UNIQUE ( employee_id ),
    -> FOREIGN KEY ( job_id ) REFERENCES jobs(job_id)
    -> );
ERROR 1824 (HY000): Failed to open the referenced table 'jobs'
mysql> SHOW TABLES;
+------------------------+
| Tables_in_assignment_1 |
+------------------------+
| countries              |
+------------------------+C REATE 
1 row in set (0.00 sec)

mysql> CREATE TABLE jobs (
    -> job_id VARCHAR(10) NOT NULL,
    -> job_title VARCHAR(40) NOT NULL,
    -> min_salary DECIMAL(6,0),
    -> max_salary DECIMAL(6,0),
    -> PRIMARY KEY (job_id)
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> SHOW TABLES;
+------------------------+
| Tables_in_assignment_1 |
+------------------------+
| countries              |
| jobs                   |
+------------------------+
2 rows in set (0.01 sec)

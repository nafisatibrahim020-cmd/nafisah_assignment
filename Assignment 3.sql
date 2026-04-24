/* Creating Database */
CREATE DATABASE QuickMart

CREATE TABLE employees(
employee_id INT PRIMARY KEY,
employee_name VARCHAR(100),
department VARCHAR(50),
salary DECIMAL(10,2),
hire_date DATE
)

CREATE TABLE products(
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
category VARCHAR(50),
price DECIMAL(10,2),
stock_quantity INT,
)

CREATE TABLE customers(
customer_id INT PRIMARY KEY,
customer_name VARCHAR(100),
city VARCHAR(50),
age INT,
)

CREATE TABLE sales(
sales_id INT PRIMARY KEY,
product_id INT,
customer_id INT,
employee_id INT,
quantity INT,
sale_date DATE,
FOREIGN KEY (product_id) REFERENCES products(product_id),
FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
)

INSERT INTO employees(employee_id,employee_name,department,salary,hire_date)
VALUES(1,'Ibrahim Omololu','Finance',40000,'2024-08-16'),
(2,'Ganiyu Adebare','Media',70000,'2026-10-05'),
(3,'Gbede Farhan','CyberSecurity',45000,'2002-11-04'),
(4,'Ajasa Ayomi','SalesRep',25000,'2003-09-02'),
(5,'Badmus Olamide','HR',80000,'2012-01-04'),
(6,'Areo Oyeniyi','IT',76000,'2014-05-07'),
(7,'Okunola Adewale','Medical',67000,'2002-06-01'),
(8,'Bamidele Murewa','Sport',59000,'2012-01-04'),
(9,'John Ire','Marketing',59000,'2011-11-11'),
(10,'Olaiya Adam','Tech',21000,'2012-10-13')

SELECT *
FROM employees

INSERT INTO products(product_id,product_name,category,price,stock_quantity)
VALUES(1,'Book','Stationery',100,45),
(2,'Laptop','Electronics',200,30),
(3,'Rice','Food',110,25),
(4,'TV','Electronics',50,20),
(5,'Trouser','Clothing',40,70),
(6,'Purse','Accessories',250,11),
(7,'Table','Furniture',80,7),
(8,'TV','Electronics',180,5),
(9,'Yam','Food',240,15),
(10,'Watch','Accessories',200,30),
(11,'Bed','Furniture',100,15),
(12,'Beg','Accessories',350,20),
(13,'Mouse','Electronics',240,16),
(14,'Pen','Stationery',150,70),
(15,'Indomie','Food',250,60)

SELECT *
FROM products

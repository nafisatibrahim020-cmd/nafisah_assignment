USE QuickMart

SELECT * FROM employees

SELECT * FROM products

SELECT * FROM customers

UPDATE employees
SET department = 'Sales'
WHERE employee_name = 'Olaiya Adam'

UPDATE products
SET product_name = 'Bag'
WHERE product_id = 12;

INSERT INTO customers(customer_id,customer_name,city,age)
VALUES(1,'Ridwan','Lagos',25),
(2,'Shola','Abuja',30),
(3,'Ayo','Ibadan',28),
(4,'Tolu','Kano',35),
(5,'Ajoke','Lagos',22),
(6,'Frank','Abuja',40),
(7,'Grace','Ibadan',28),
(8,'Tiwa','Kano',32),
(9,'Isaac','Lagos',30),
(10,'Mide','Abuja',31),
(11,'Kemi','Ibadan',26),
(12,'Quadri','Kano',35)

SELECT * FROM customers

CREATE TABLE sale (
sales_id INT PRIMARY KEY,
    product_id INT,
    customer_id INT,
    employee_id INT,
    quantity INT,
    sales_date DATE
)


INSERT INTO sale(sales_id, product_id, customer_id, employee_id, quantity, sales_date)
VALUES (1, 1, 1, 1, 5, '2025-01-01'),
(2, 2, 2, 3, 2, '2025-01-02'),
(3, 3, 3, 5, 4, '2025-01-03'),
(4, 4, 4, 6, 1, '2025-01-04'),
(5, 5, 5, 7, 3, '2025-01-05'),
(6, 6, 6, 8, 2, '2025-01-06'),
(7, 7, 7, 9, 6, '2025-01-07'),
(8, 8, 8, 10, 1, '2025-01-08'),
(9, 9, 9, 2, 2, '2025-01-09'),
(10, 10, 10, 3, 3, '2025-01-10'),
(11, 11, 11, 4, 1, '2025-01-11'),
(12, 12, 12, 5, 4, '2025-01-12'),
(13, 13, 1, 6, 3, '2025-01-13'),
(14, 14, 2, 7, 5, '2025-01-14'),
(15, 15, 3, 8, 7, '2025-01-15'),
(16, 1, 4, 9, 2, '2025-01-16'),
(17, 2, 5, 10, 4, '2025-01-17'),
(18, 3, 6, 1, 3, '2025-01-18'),
(19, 4, 7, 2, 6, '2025-01-19'),
(20, 5, 8, 3, 1, '2025-01-20')


SELECT * FROM employees
SELECT * FROM products
SELECT * FROM customers
SELECT * FROM sale

SELECT product_name,
price FROM products

SELECT DISTINCT category FROM products

SELECT * FROM products 
WHERE price > 50

SELECT * FROM employees 
WHERE department = 'Sales'

SELECT * FROM sales 
WHERE sale_date BETWEEN '2025-01-05' AND '2025-01-15'

SELECT * FROM products 
ORDER BY price DESC

SELECT * FROM customers
ORDER BY age ASC

SELECT COUNT(*) AS total_sales 
FROM sales

SELECT AVG(price) AS avg_price 
FROM products

SELECT employee_id, COUNT(*) AS sales_count
FROM sales
GROUP BY employee_id


SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department

SELECT p.category, SUM(s.quantity) AS total_quantity
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.category

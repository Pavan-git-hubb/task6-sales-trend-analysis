CREATE DATABASE task6_db;
USE task6_db;

CREATE TABLE online_sales (
    order_id INT,
    order_date DATE,
    product_id INT,
    amount DECIMAL(10,2)
);

INSERT INTO online_sales VALUES
(1, '2023-01-05', 101, 500),
(2, '2023-01-10', 102, 300),
(3, '2023-02-15', 103, 700),
(4, '2023-02-20', 101, 200),
(5, '2023-03-05', 104, 900),
(6, '2023-03-18', 102, 400),
(7, '2023-04-22', 103, 650),
(8, '2023-04-25', 101, 350),
(9, '2023-05-02', 104, 800),
(10, '2023-05-15', 102, 450);

SELECT * FROM online_sales;

SELECT 
    order_id,
    order_date,
    YEAR(order_date) AS year,
    MONTH(order_date) AS month
FROM online_sales;

SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM online_sales
GROUP BY year, month
ORDER BY year, month;

SELECT 
    YEAR(order_date) AS year,
    MONTHNAME(order_date) AS month_name,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM online_sales
GROUP BY year, month_name, MONTH(order_date)
ORDER BY year, MONTH(order_date);

SELECT 
    YEAR(order_date) AS year,
    MONTHNAME(order_date) AS month,
    SUM(amount) AS total_revenue
FROM online_sales
GROUP BY year, month, MONTH(order_date)
ORDER BY total_revenue DESC
LIMIT 1;

SELECT 
    YEAR(order_date) AS year,
    MONTHNAME(order_date) AS month,
    SUM(amount) AS total_revenue
FROM online_sales
GROUP BY year, month, MONTH(order_date)
ORDER BY total_revenue ASC
LIMIT 1;
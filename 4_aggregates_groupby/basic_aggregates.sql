-- BASIC AGGREGATE FUNCTIONS: SUM, AVG, COUNT, MAX, MIN

-- Table creation
CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    quantity INT,
    price DECIMAL(10, 2)
);

-- Insert data
INSERT INTO Sales VALUES
(1, 'Laptop', 2, 70000),
(2, 'Phone', 5, 20000),
(3, 'Tablet', 3, 30000),
(4, 'Laptop', 1, 70000),
(5, 'Phone', 2, 20000);

-- Aggregate functions
SELECT 
    SUM(price) AS total_sales,
    AVG(price) AS average_price,
    COUNT(*) AS total_orders,
    MAX(price) AS highest_price,
    MIN(price) AS lowest_price
FROM Sales;

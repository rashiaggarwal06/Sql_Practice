-- GROUP BY and HAVING clause usage

-- Group by product and calculate total quantity sold
SELECT 
    product_name,
    SUM(quantity) AS total_quantity
FROM Sales
GROUP BY product_name;

-- Group by with HAVING: products with total quantity sold > 3
SELECT 
    product_name,
    SUM(quantity) AS total_quantity
FROM Sales
GROUP BY product_name
HAVING SUM(quantity) > 3;

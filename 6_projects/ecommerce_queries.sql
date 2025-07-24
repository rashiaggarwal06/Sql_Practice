-- ecommerce_queries.sql

-- 1. List all customers
SELECT * FROM Customers;

-- 2. List all products with price > 1000
SELECT * FROM Products WHERE Price > 1000;

-- 3. Total number of orders placed
SELECT COUNT(*) AS TotalOrders FROM Orders;

-- 4. Fetch orders with customer names
SELECT o.OrderID, c.Name, o.OrderDate
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID;

-- 5. Get order details for a specific order
SELECT od.OrderDetailID, p.ProductName, od.Quantity
FROM OrderDetails od
JOIN Products p ON od.ProductID = p.ProductID
WHERE od.OrderID = 1;

-- 6. Find total amount spent by each customer
SELECT c.Name, SUM(p.Price * od.Quantity) AS TotalSpent
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID
GROUP BY c.Name;

-- 7. Show out of stock products
SELECT * FROM Products WHERE Stock = 0;

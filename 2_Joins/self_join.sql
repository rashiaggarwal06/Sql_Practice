-- SELF JOIN: Find employees who report to other employees
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    manager_id INT
);

INSERT INTO Employees VALUES (1, 'Rashi', NULL), (2, 'Aman', 1), (3, 'Vikram', 1), (4, 'Neha', 2);

-- Self join to get manager names
SELECT e.emp_name AS Employee, m.emp_name AS Manager
FROM Employees e
LEFT JOIN Employees m ON e.manager_id = m.emp_id;
